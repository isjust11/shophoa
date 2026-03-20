import { Controller, Get, Param, Res, NotFoundException } from '@nestjs/common';
import type { Response } from 'express';
import { SettingsService } from '../settings/settings.service';

@Controller()
export class VerificationController {
    constructor(private readonly settings: SettingsService) { }

    /**
     * Serves Google Search Console HTML verification file dynamically.
     * When Google asks you to upload a file like "google1234abcd.html",
     * just paste "google1234abcd" into the admin setting "google_verification".
     * This endpoint will serve the correct HTML response.
     */
    @Get(':filename.html')
    async serveVerification(
        @Param('filename') filename: string,
        @Res() res: Response,
    ) {
        // Only handle google/bing verification files
        if (filename.startsWith('google')) {
            const code = await this.settings.get('google_verification');
            if (code && filename === code) {
                res.type('text/html').send(`google-site-verification: ${code}.html`);
                return;
            }
        }

        if (filename.startsWith('BingSiteAuth')) {
            const code = await this.settings.get('bing_verification');
            if (code) {
                res.type('text/xml').send(
                    `<?xml version="1.0"?>\n<users>\n  <user>${code}</user>\n</users>`,
                );
                return;
            }
        }

        // Not a verification file — let it pass through (404)
        throw new NotFoundException();
    }
}

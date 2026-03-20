import { Module } from '@nestjs/common';
import { SitemapController } from './sitemap.controller';
import { VerificationController } from './verification.controller';
import { SettingsModule } from '../settings/settings.module';

@Module({
    imports: [SettingsModule],
    controllers: [SitemapController, VerificationController],
})
export class SitemapModule { }

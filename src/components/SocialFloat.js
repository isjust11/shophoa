import React from 'react';
import { useSettings } from '../context/SettingsContext';

const SocialFloat = () => {
  const { settings } = useSettings();

  const hasAnySocial = settings.zalo_url || settings.facebook_url || settings.phone;

  if (!hasAnySocial) return null;

  return (
    <div className="social-float">
      {settings.zalo_url && (
        <a href={settings.zalo_url} className="social-float-link zalo" target="_blank" rel="noopener noreferrer" aria-label="Zalo">
          <i className="fas fa-comments"></i>
        </a>
      )}
      {settings.facebook_url && (
        <a href={settings.facebook_url} className="social-float-link facebook" target="_blank" rel="noopener noreferrer" aria-label="Facebook">
          <i className="fab fa-facebook-f"></i>
        </a>
      )}
      {settings.phone && (
        <a href={`tel:${settings.phone}`} className="social-float-link phone" aria-label="Gọi điện">
          <i className="fas fa-phone-alt"></i>
        </a>
      )}
    </div>
  );
};

export default SocialFloat;

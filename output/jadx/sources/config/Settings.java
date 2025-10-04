package config;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.exifinterface.media.ExifInterface;
import app.tunnel.vpncommons.VpnConstants;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes3.dex */
public class Settings implements SettingsConstants {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final SharedPreferences f1011xfbe0c504;

    public Settings(Context context) {
        this.f1011xfbe0c504 = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static void setDefaultConfig(Context context) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(null, "clients3.google.com");
        edit.putBoolean(SettingsConstants.AUTO_PINGER, false);
        edit.putBoolean(SettingsConstants.WAKELOCK, true);
        edit.putBoolean(SettingsConstants.DNSFORWARD_KEY, true);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY1, VpnConstants.DEFAULT_SECONDARY_DNS);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY2, VpnConstants.DEFAULT_PRIMARY_DNS);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY, VpnConstants.DEFAULT_PRIMARY_DNS);
        edit.putBoolean(SettingsConstants.UDPFORWARD_KEY, false);
        edit.putString(SettingsConstants.UDPRESOLVER_KEY, "127.0.0.1:7300");
        edit.putString(SettingsConstants.MODO_NOTURNO_KEY, DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        edit.putBoolean(SettingsConstants.VIBRATE, true);
        edit.putString(SettingsConstants.PINGER_KEY, ExifInterface.GPS_MEASUREMENT_3D);
        edit.putString(SettingsConstants.MAXIMO_THREADS_KEY, "8th");
        edit.remove(SettingsConstants.MODO_DEBUG_KEY);
        edit.remove(SettingsConstants.HIDE_LOG_KEY);
        edit.remove(SettingsConstants.AUTO_CLEAR_LOGS_KEY);
        edit.remove(SettingsConstants.FILTER_APPS);
        edit.remove(SettingsConstants.FILTER_BYPASS_MODE);
        edit.remove(SettingsConstants.FILTER_APPS_LIST);
        edit.remove(SettingsConstants.TETHERING_SUBNET);
        edit.remove(SettingsConstants.data_compression_key);
        edit.remove(SettingsConstants.DISABLE_DELAY_KEY);
        edit.commit();
    }

    public boolean getAutoClearLog() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.AUTO_CLEAR_LOGS_KEY, false);
    }

    public boolean getBypass() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.BYPASS_KEY, false);
    }

    public String[] getFilterApps() {
        String string = this.f1011xfbe0c504.getString(SettingsConstants.FILTER_APPS_LIST, "");
        if (string.isEmpty()) {
            return new String[0];
        }
        return string.split("\n");
    }

    public boolean getHideLog() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.HIDE_LOG_KEY, false);
    }

    public String getIdioma() {
        return this.f1011xfbe0c504.getString(SettingsConstants.IDIOMA_KEY, "default");
    }

    public boolean getIsDisabledDelaySSH() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.DISABLE_DELAY_KEY, false);
    }

    public boolean getIsFilterApps() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.FILTER_APPS, false);
    }

    public boolean getIsFilterBypassMode() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.FILTER_BYPASS_MODE, false);
    }

    public boolean getIsTetheringSubnet() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.TETHERING_SUBNET, false);
    }

    public int getMaximoThreadsSocks() {
        String str = "8th";
        String string = this.f1011xfbe0c504.getString(SettingsConstants.MAXIMO_THREADS_KEY, "8th");
        if (string != null && !string.isEmpty()) {
            str = string;
        }
        return Integer.parseInt(str.replace("th", ""));
    }

    public String getMensagemConfigExportar() {
        return this.f1011xfbe0c504.getString(SettingsConstants.CONFIG_MENSAGEM_EXPORTAR_KEY, "");
    }

    public boolean getModoDebug() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.MODO_DEBUG_KEY, false);
    }

    public String getModoNoturno() {
        return this.f1011xfbe0c504.getString(SettingsConstants.MODO_NOTURNO_KEY, DebugKt.DEBUG_PROPERTY_VALUE_OFF);
    }

    public SharedPreferences getPrefsPrivate() {
        return null;
    }

    public String getSSHKeypath() {
        return this.f1011xfbe0c504.getString(SettingsConstants.KEYPATH_KEY, "");
    }

    public int getSSHPinger() {
        SharedPreferences sharedPreferences = this.f1011xfbe0c504;
        String str = ExifInterface.GPS_MEASUREMENT_3D;
        String string = sharedPreferences.getString(SettingsConstants.PINGER_KEY, ExifInterface.GPS_MEASUREMENT_3D);
        if (string != null && !string.isEmpty()) {
            str = string;
        }
        return Integer.parseInt(str);
    }

    public boolean getVpnDnsForward() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.DNSFORWARD_KEY, true);
    }

    public String getVpnDnsResolver() {
        return this.f1011xfbe0c504.getString(SettingsConstants.DNSRESOLVER_KEY, "1.1.1.1");
    }

    public boolean getVpnUdpForward() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.UDPFORWARD_KEY, false);
    }

    public String getVpnUdpResolver() {
        return this.f1011xfbe0c504.getString(SettingsConstants.UDPRESOLVER_KEY, "127.0.0.1:7300");
    }

    public boolean getWakelock() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.WAKELOCK, true);
    }

    public boolean get_compression() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.data_compression_key, true);
    }

    public boolean setAutoPing() {
        return this.f1011xfbe0c504.getBoolean(SettingsConstants.AUTO_PINGER, false);
    }

    public void setBypass(boolean z) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putBoolean(SettingsConstants.BYPASS_KEY, z);
        edit.commit();
    }

    public void setIdioma(String str) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putString(SettingsConstants.IDIOMA_KEY, str);
        edit.commit();
    }

    public void setMensagemConfigExportar(String str) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putString(SettingsConstants.CONFIG_MENSAGEM_EXPORTAR_KEY, str);
        edit.commit();
    }

    public void setModoDebug(boolean z) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putBoolean(SettingsConstants.MODO_DEBUG_KEY, z);
        edit.commit();
    }

    public void setModoNoturno(String str) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putString(SettingsConstants.MODO_NOTURNO_KEY, str);
        edit.commit();
    }

    public String setPinger() {
        return this.f1011xfbe0c504.getString(null, "");
    }

    public void setVpnDnsForward(boolean z) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putBoolean(SettingsConstants.DNSFORWARD_KEY, z);
        edit.commit();
    }

    public void setVpnDnsResolver(String str) {
        if (str == null || str.isEmpty()) {
            str = VpnConstants.DEFAULT_PRIMARY_DNS;
        }
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putString(SettingsConstants.DNSRESOLVER_KEY, str);
        edit.commit();
    }

    public void setVpnUdpForward(boolean z) {
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putBoolean(SettingsConstants.UDPFORWARD_KEY, z);
        edit.commit();
    }

    public void setVpnUdpResolver(String str) {
        if (str == null || str.isEmpty()) {
            str = "127.0.0.1:7300";
        }
        SharedPreferences.Editor edit = this.f1011xfbe0c504.edit();
        edit.putString(SettingsConstants.UDPRESOLVER_KEY, str);
        edit.commit();
    }
}

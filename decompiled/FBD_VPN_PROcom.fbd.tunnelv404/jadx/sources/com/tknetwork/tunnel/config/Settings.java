package com.tknetwork.tunnel.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.preference.Preference;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.securepreferences.SecurePreferences;

/* loaded from: classes3.dex */
public class Settings implements SettingsConstants {
    private static String PINGER;
    private final Context mContext;
    private final SharedPreferences mPrefs;
    private SecurePreferences mPrefsPrivate;

    public Settings(Context context) {
        this.mContext = context;
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static void setDefaultConfig(Context context) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(PINGER, new ObfuscatedString(new long[]{2879115634488681671L, -564731905380653900L, 4344839124768520252L, 7407817592397369456L}).toString());
        edit.putBoolean(new ObfuscatedString(new long[]{-9081368515717078899L, -4059947566944521232L, 2301809420578946021L}).toString(), false);
        edit.putBoolean(new ObfuscatedString(new long[]{8918871030522805061L, 2363187991376088709L}).toString(), true);
        edit.putBoolean(new ObfuscatedString(new long[]{-5868838832836342992L, 3998169312378593845L, 72218075880991588L}).toString(), true);
        edit.putString(new ObfuscatedString(new long[]{4004948113030964662L, 6882186974159951178L, -5084243841529038279L}).toString(), new ObfuscatedString(new long[]{-6459961125137131683L, -3434649259819962532L}).toString());
        edit.putString(new ObfuscatedString(new long[]{-1327651456711946897L, -5890929371411005458L, -3223296254108257758L}).toString(), new ObfuscatedString(new long[]{-1090544975825588247L, 4628488006068158831L}).toString());
        edit.putString(new ObfuscatedString(new long[]{-4029614398334513576L, -2129425909785953536L, 2719406615753112277L}).toString(), new ObfuscatedString(new long[]{-7755459284265897084L, 2931247654987309253L}).toString());
        edit.putBoolean(new ObfuscatedString(new long[]{1787268178930110208L, -2153214041542018703L, 3952667822540064162L}).toString(), false);
        edit.putString(new ObfuscatedString(new long[]{4223636697106185886L, -6710121266076111234L, -7259528877421498732L}).toString(), new ObfuscatedString(new long[]{7371402931663060477L, -8425059826026986506L, 7300779855318737748L}).toString());
        edit.putString(new ObfuscatedString(new long[]{-423969033271839951L, -8022102691543723131L, -8491600339038984629L}).toString(), new ObfuscatedString(new long[]{-2174754040202931648L, 8544512516021251795L}).toString());
        edit.putBoolean(new ObfuscatedString(new long[]{-8554795473138067891L, -5935057973549877231L}).toString(), true);
        edit.putString(new ObfuscatedString(new long[]{-4984198222712726531L, 2354231327101378404L, -7657836743007460395L}).toString(), new ObfuscatedString(new long[]{4192156957320170349L, 3211211062515876465L}).toString());
        edit.putString(new ObfuscatedString(new long[]{828004630787598062L, -8049239721527926448L, -4852157088880815149L, 8370579998443878767L}).toString(), new ObfuscatedString(new long[]{-5318890016560697278L, 8797454956504180062L}).toString());
        edit.remove(new ObfuscatedString(new long[]{3020044389729955417L, 9138735004464522535L, -7169833009069076296L}).toString());
        edit.remove(new ObfuscatedString(new long[]{2713588426872410053L, 3503565763101688239L}).toString());
        edit.remove(new ObfuscatedString(new long[]{-5095812776759224300L, 4301940848910194133L, -5769438349817617112L}).toString());
        edit.remove(new ObfuscatedString(new long[]{3226790047517520826L, -4085838623515761914L, -2101987624418504079L}).toString());
        edit.remove(new ObfuscatedString(new long[]{-1968814255481740661L, 3457263575397942906L, -1525812680712599024L}).toString());
        edit.remove(new ObfuscatedString(new long[]{3032755421180805312L, -6855153055989271322L, -7115995814829774599L}).toString());
        edit.remove(new ObfuscatedString(new long[]{2946212113247320359L, -2638402674634589079L, 3816097284244631577L}).toString());
        edit.remove(new ObfuscatedString(new long[]{7271095298259039495L, 7356871555473372492L, 2171596689132224897L}).toString());
        edit.remove(new ObfuscatedString(new long[]{8351027489275807105L, 9120117554053513940L, -7745652574456142121L}).toString());
        edit.commit();
    }

    public boolean getAutoClearLog() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-3314838075829809139L, 4461259633583818554L, 4534761913988223277L}).toString(), false);
    }

    public boolean getBypass() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{8085536024661255077L, 8501545115417508094L, -5023846916312242507L}).toString(), false);
    }

    public String[] getFilterApps() {
        String string = this.mPrefs.getString(new ObfuscatedString(new long[]{-7366591419995244964L, -8437311260216524095L, 3846294369228103042L}).toString(), new ObfuscatedString(new long[]{-8061730915170120526L}).toString());
        if (string.isEmpty()) {
            return new String[0];
        }
        return string.split(new ObfuscatedString(new long[]{6734906759166946759L, -727095031589299598L}).toString());
    }

    public boolean getHideLog() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-2901761563833434957L, 8611038259505319673L}).toString(), false);
    }

    public String getIdioma() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{-1860824438551923393L, -6154768910457460743L}).toString(), new ObfuscatedString(new long[]{-2632095507890900819L, 259307699578646044L}).toString());
    }

    public boolean getIsDisabledDelaySSH() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-4000618973100956445L, -248475692773628024L, -7335197642684971284L}).toString(), false);
    }

    public boolean getIsFilterApps() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-2727317411248743027L, 2404430545685381414L, -2760133216484767445L}).toString(), false);
    }

    public boolean getIsFilterBypassMode() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-1766712880641350634L, 3886333005776458312L, -8440370276397358333L}).toString(), false);
    }

    public boolean getIsTetheringSubnet() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{6781727033885545674L, -658487590374412310L, 3481635607601317319L}).toString(), false);
    }

    public int getMaximoThreadsSocks() {
        String string = this.mPrefs.getString(new ObfuscatedString(new long[]{2877525154339144165L, 4881271218098833321L, 8769452158870044536L, 1753848839345584017L}).toString(), new ObfuscatedString(new long[]{-3188580550918674403L, -981259481765892179L}).toString());
        if (string == null || string.isEmpty()) {
            string = new ObfuscatedString(new long[]{4682114595010378754L, -4042931051400348784L}).toString();
        }
        return Integer.parseInt(string.replace(new ObfuscatedString(new long[]{-6416701971758103567L, -4463438009053840720L}).toString(), new ObfuscatedString(new long[]{-2944046855023240293L}).toString()));
    }

    public String getMensagemConfigExportar() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{-1304535872790764642L, -5300658142838592284L, 701477580421794804L, -1647298510959590497L}).toString(), new ObfuscatedString(new long[]{-1732256078648016754L}).toString());
    }

    public boolean getModoDebug() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-8108490810339379337L, 5043910283808779996L, -3479835220542707890L}).toString(), false);
    }

    public String getModoNoturno() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{1536357424790087273L, 4435712674322250068L, 8483954053928495719L}).toString(), new ObfuscatedString(new long[]{-2428454118110147920L, 4312500115063981838L}).toString());
    }

    public SecurePreferences getPrefsPrivate() {
        return this.mPrefsPrivate;
    }

    public String getPrivString(String str) {
        String obfuscatedString = new ObfuscatedString(new long[]{-3366265746033445217L}).toString();
        if (str.equals(new ObfuscatedString(new long[]{-7371121029646487832L, 7810808822079826634L, -7789953844456182291L}).toString())) {
            obfuscatedString = new ObfuscatedString(new long[]{-6069567946378714464L, 4591884247954771003L}).toString();
        }
        return this.mPrefsPrivate.getString(str, obfuscatedString);
    }

    public String getSSHKeypath() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{-6323178313882724204L, -2852327613008648870L}).toString(), new ObfuscatedString(new long[]{6225576341538858034L}).toString());
    }

    public int getSSHPinger() {
        String string = this.mPrefs.getString(new ObfuscatedString(new long[]{-2509360461552681308L, -3877144642476868168L, -4808311167209939026L}).toString(), new ObfuscatedString(new long[]{-8387887161814566173L, -4763485688966044269L}).toString());
        if (string == null || string.isEmpty()) {
            string = new ObfuscatedString(new long[]{-6088454026425741254L, -797570884996671580L}).toString();
        }
        return Integer.parseInt(string);
    }

    public boolean getVpnDnsForward() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-5156010968575326617L, -8894463023895140993L, 3954621926155907120L}).toString(), true);
    }

    public String getVpnDnsResolver() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{3804783003625961977L, 668849186086358705L, 1653109033676311926L}).toString(), new ObfuscatedString(new long[]{-6691069753620345141L, 9117263753647088631L}).toString());
    }

    public boolean getVpnUdpForward() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{7331027120585207001L, -7810565328557548076L, 6157313466299003764L}).toString(), false);
    }

    public String getVpnUdpResolver() {
        return this.mPrefs.getString(new ObfuscatedString(new long[]{-7606274586893706273L, -3125826749943018183L, 3088502809066852970L}).toString(), new ObfuscatedString(new long[]{6169636228062947461L, -2946123554958335584L, 8078620611474005729L}).toString());
    }

    public boolean getWakelock() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-4234847079926588791L, 3966283170847278485L}).toString(), true);
    }

    public boolean get_compression() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-8205042581376530305L, -8969289824300773763L, 7493979177839259386L}).toString(), true);
    }

    @Override // com.tknetwork.tunnel.config.SettingsConstants
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return false;
    }

    public boolean setAutoPing() {
        return this.mPrefs.getBoolean(new ObfuscatedString(new long[]{-211191353315580884L, 5182668546399343193L, -518545330714918453L}).toString(), false);
    }

    public void setBypass(boolean z) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putBoolean(new ObfuscatedString(new long[]{3117169947711293796L, 2601099071426491391L, 6565510459881658919L}).toString(), z);
        edit.commit();
    }

    public void setIdioma(String str) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putString(new ObfuscatedString(new long[]{3571190336036849952L, 6764896533644176343L}).toString(), str);
        edit.commit();
    }

    public void setMensagemConfigExportar(String str) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putString(new ObfuscatedString(new long[]{-248499837980471868L, 4849828614151833645L, -2540843950720096978L, -4667332439371140641L}).toString(), str);
        edit.commit();
    }

    public void setModoDebug(boolean z) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putBoolean(new ObfuscatedString(new long[]{7242940306049146136L, -278917609755450421L, -8884245774283057313L}).toString(), z);
        edit.commit();
    }

    public void setModoNoturno(String str) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putString(new ObfuscatedString(new long[]{5339566246060614916L, -201915112962428051L, -8960732065215783921L}).toString(), str);
        edit.commit();
    }

    public String setPinger() {
        return this.mPrefs.getString(PINGER, new ObfuscatedString(new long[]{-2618198882087910420L}).toString());
    }

    public void setVpnDnsForward(boolean z) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putBoolean(new ObfuscatedString(new long[]{5838881146274557141L, -2317707613328302350L, -982849753431145367L}).toString(), z);
        edit.commit();
    }

    public void setVpnDnsResolver(String str) {
        if (str == null || str.isEmpty()) {
            str = new ObfuscatedString(new long[]{-8916083171849121359L, 1187980572832071683L}).toString();
        }
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putString(new ObfuscatedString(new long[]{479290443714303371L, -6390048957062485128L, 2972152482528488056L}).toString(), str);
        edit.commit();
    }

    public void setVpnUdpForward(boolean z) {
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putBoolean(new ObfuscatedString(new long[]{5147811804268657739L, 4873802263120975765L, -2162245026244207034L}).toString(), z);
        edit.commit();
    }

    public void setVpnUdpResolver(String str) {
        if (str == null || str.isEmpty()) {
            str = new ObfuscatedString(new long[]{7174237953875408230L, -7920076960151000837L, 7029967431555435684L}).toString();
        }
        SharedPreferences.Editor edit = this.mPrefs.edit();
        edit.putString(new ObfuscatedString(new long[]{-4807377796609673200L, -84442018503145948L, 7629236491668882815L}).toString(), str);
        edit.commit();
    }
}

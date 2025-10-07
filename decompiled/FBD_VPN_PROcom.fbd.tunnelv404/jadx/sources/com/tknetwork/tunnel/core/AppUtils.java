package com.tknetwork.tunnel.core;

import android.content.Context;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.OpenVPNApplication;
import config.ConfigUtil;

/* loaded from: classes3.dex */
public class AppUtils {
    private static ConfigUtil mConfig;
    private static Context mContext;

    public AppUtils(Context context) {
        mContext = context;
        OpenVPNApplication.getPrivateSharedPreferences().edit();
        mConfig = ConfigUtil.getInstance(context);
    }

    private static Context mContext() {
        Context context = mContext;
        if (context == null) {
            return OpenVPNApplication.getApp();
        }
        return context;
    }

    /* renamed from: 主, reason: contains not printable characters */
    public static boolean m1554() {
        String replace = new ObfuscatedString(new long[]{-6469761783738686125L, 749277059308130899L, 6752776867254104241L, 3001579779324953432L, 535412572107798734L, 1245350045262547834L}).toString().replace(new ObfuscatedString(new long[]{7950532788919552140L, -7240816332181957762L}).toString(), new ObfuscatedString(new long[]{5413903343099685173L, 8919683294460876781L}).toString()).replace(new ObfuscatedString(new long[]{8307254209465650639L, 4819827909560109814L}).toString(), new ObfuscatedString(new long[]{7368108008359144735L, -1861975817176331962L}).toString()).replace(new ObfuscatedString(new long[]{-5013813273307743718L, -5525791368619966917L}).toString(), new ObfuscatedString(new long[]{7020845773682598968L, 2093974926555360174L}).toString()).replace(new ObfuscatedString(new long[]{-7439313513415834441L, -908669833011840430L}).toString(), new ObfuscatedString(new long[]{6201078416422951268L, -6611340561233301835L}).toString()).replace(new ObfuscatedString(new long[]{1613532481444349389L, -3776649239620054255L}).toString(), new ObfuscatedString(new long[]{-2430346701521227607L, -7141125160096574101L}).toString()).replace(new ObfuscatedString(new long[]{-8104966090085497302L, -759481484361131638L}).toString(), new ObfuscatedString(new long[]{890972276347906060L, 3604293237968201432L}).toString()).replace(new ObfuscatedString(new long[]{6525469381226222021L, 1453589401593320101L}).toString(), new ObfuscatedString(new long[]{8924349009201876162L, 3903405258139257471L}).toString()).replace(new ObfuscatedString(new long[]{-7018251592838323382L, 9092432406357251556L}).toString(), new ObfuscatedString(new long[]{-1938473393281170123L, 5608893154581556998L}).toString()).replace(new ObfuscatedString(new long[]{4747495165422642594L, -7266519384878723006L}).toString(), new ObfuscatedString(new long[]{-4084013745784809822L, 2821239201393254186L}).toString()).replace(new ObfuscatedString(new long[]{-7296162215149588024L, 5960367904894792086L}).toString(), new ObfuscatedString(new long[]{-5945470081346289780L, -1041782663560442174L}).toString()).replace(new ObfuscatedString(new long[]{5543868784612969164L, 3103837476528754892L}).toString(), new ObfuscatedString(new long[]{-7371105377764946406L, 1423247875442182533L}).toString()).replace(new ObfuscatedString(new long[]{-2308166820675609872L, -1081642197031940569L}).toString(), new ObfuscatedString(new long[]{2602962995214879736L, -6261659166838743958L}).toString()).replace(new ObfuscatedString(new long[]{5433566906837447136L, -9183188887574189183L}).toString(), new ObfuscatedString(new long[]{-1705309453839953874L, -1757530210902682459L}).toString()).replace(new ObfuscatedString(new long[]{3068981477815666276L, -5034434112141436456L}).toString(), new ObfuscatedString(new long[]{-8816042319892608603L, -4274860277229781034L}).toString()).replace(new ObfuscatedString(new long[]{607483322388881024L, -8856571221238940346L}).toString(), new ObfuscatedString(new long[]{-6789769486901992598L, 2078668581650712222L}).toString()).replace(new ObfuscatedString(new long[]{-7396392039118637983L, 8771638777436724853L}).toString(), new ObfuscatedString(new long[]{8429982116194921359L, -1620671296680763301L}).toString()).replace(new ObfuscatedString(new long[]{-1631499807989822116L, -4124262203881311844L}).toString(), new ObfuscatedString(new long[]{-51101070327826995L, -8734472248908766656L}).toString()).replace(new ObfuscatedString(new long[]{8796574717553729699L, 1131051714212846092L}).toString(), new ObfuscatedString(new long[]{-1235096747624252902L, 6314663552772857985L}).toString()).replace(new ObfuscatedString(new long[]{-484121415291065965L, 2256556531240109634L}).toString(), new ObfuscatedString(new long[]{-895978550355217399L, -43744671848878636L}).toString()).replace(new ObfuscatedString(new long[]{-2680809791503602537L, 4480823079550165163L}).toString(), new ObfuscatedString(new long[]{-3660626792907644029L, -6433668569982794400L}).toString()).replace(new ObfuscatedString(new long[]{-7400356492376509002L, 6819476370863995452L}).toString(), new ObfuscatedString(new long[]{2782541821476516428L, 7900880580362566744L}).toString()).replace(new ObfuscatedString(new long[]{-6533821229191544714L, -8728811188798161142L}).toString(), new ObfuscatedString(new long[]{8245145640705141279L, -7557615786519278371L}).toString()).replace(new ObfuscatedString(new long[]{2032310099774640311L, 5830173991035938461L}).toString(), new ObfuscatedString(new long[]{2157645961714237748L, 197238251291119656L}).toString()).replace(new ObfuscatedString(new long[]{-4508431699993226277L, -181445201913956978L}).toString(), new ObfuscatedString(new long[]{-3820892752962134629L, 7343160506922089179L}).toString()).replace(new ObfuscatedString(new long[]{-2001639717587352103L, 2359856610786404324L}).toString(), new ObfuscatedString(new long[]{5673063506889945418L, 393613960313534430L}).toString()).replace(new ObfuscatedString(new long[]{-9211386868390729267L, -4692880015185809641L}).toString(), new ObfuscatedString(new long[]{8683897004976183019L, -1819265625328176448L}).toString());
        if (mContext().getString(R.string.app_name).equals(new ObfuscatedString(new long[]{4048677249249221571L, -1716980137725728284L, -1536340022321444000L}).toString()) && mContext().getString(R.string.banner).equals(new ObfuscatedString(new long[]{-4458289003605691086L, 7453796545401027958L, -2583711142604995658L, -3644609009904788680L, 8785018658552776644L, -3662737416985233871L}).toString()) && mContext().getPackageName().equals(replace)) {
            return true;
        }
        return false;
    }
}

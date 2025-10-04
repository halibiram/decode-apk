package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.install.InstallException;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzr {
    private static final com.google.android.play.core.appupdate.internal.zzm zzb = new com.google.android.play.core.appupdate.internal.zzm(new ObfuscatedString(new long[]{5305429807533113182L, 5928797507120710352L, -6311078772873965082L}).toString());
    private static final Intent zzc = new Intent(new ObfuscatedString(new long[]{-7124092618762755143L, 6569602215300539476L, -3598669987150227553L, -8792188800847196763L, 1914532339150421920L, 3643919095452672368L, 8762561193550683249L, -2835242747501547620L}).toString()).setPackage(new ObfuscatedString(new long[]{-5448683682044904523L, -8354391693320290331L, -9108055998185633148L, 8163726738140723134L}).toString());

    @Nullable
    @VisibleForTesting
    com.google.android.play.core.appupdate.internal.zzx zza;
    private final String zzd;
    private final Context zze;
    private final zzt zzf;

    public zzr(Context context, zzt zztVar) {
        this.zzd = context.getPackageName();
        this.zze = context;
        this.zzf = zztVar;
        if (com.google.android.play.core.appupdate.internal.zzab.zza(context)) {
            this.zza = new com.google.android.play.core.appupdate.internal.zzx(com.google.android.play.core.appupdate.internal.zzz.zza(context), zzb, new ObfuscatedString(new long[]{-4100857586030020052L, -7604222022185838753L, -4172335628897075315L}).toString(), zzc, zzl.zza, null);
        }
    }

    public static /* bridge */ /* synthetic */ Bundle zzb(zzr zzrVar, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(zzi());
        bundle.putString(new ObfuscatedString(new long[]{8210721557065086398L, -85798185518395365L, -9057861427038532856L}).toString(), str);
        try {
            num = Integer.valueOf(zzrVar.zze.getPackageManager().getPackageInfo(zzrVar.zze.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            zzb.zzb(new ObfuscatedString(new long[]{-3697343703356762622L, 5600876549435309052L, -4440526390336394684L, 6579341886729444085L, -5946446111227563015L, 6810051609259635374L, -2814252725205505278L, 1261033432758430145L}).toString(), new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt(new ObfuscatedString(new long[]{5637217477277986365L, 3631853114673234327L, 5691385394662876331L}).toString(), num.intValue());
        }
        return bundle;
    }

    public static /* bridge */ /* synthetic */ AppUpdateInfo zzf(zzr zzrVar, Bundle bundle, String str) {
        Integer valueOf;
        String obfuscatedString = new ObfuscatedString(new long[]{7638972961166246624L, 9091932928790820693L, 2676803171966725498L, -5198515653118759568L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{5498844439787834575L, 1986200343879681480L, 725017899002116043L}).toString();
        String obfuscatedString3 = new ObfuscatedString(new long[]{-4779447519582385010L, 3651189860701161644L, 4482658282303886146L}).toString();
        String obfuscatedString4 = new ObfuscatedString(new long[]{-7313044171528817255L, 4508494792652733742L, 30246659298954163L, 9164433948970351612L}).toString();
        int i = bundle.getInt(obfuscatedString2, -1);
        int i2 = bundle.getInt(obfuscatedString4);
        int i3 = bundle.getInt(obfuscatedString3, 0);
        if (bundle.getInt(obfuscatedString, -1) == -1) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(bundle.getInt(new ObfuscatedString(new long[]{-2531722686980971657L, -6776141785558139945L, 7751919791689613136L, -331964470544076316L}).toString()));
        }
        Integer num = valueOf;
        int i4 = bundle.getInt(new ObfuscatedString(new long[]{-4115604368819315225L, -4208596019730613744L, 5011687016503003427L, 7951856233527581662L}).toString(), 0);
        long j = bundle.getLong(new ObfuscatedString(new long[]{-751206740834143710L, -1986918271559255472L, -2924499487022394495L}).toString());
        long j2 = bundle.getLong(new ObfuscatedString(new long[]{-2730166777909164068L, 5094080170455754418L, 360097312139833705L, -4804055281957258215L}).toString());
        long j3 = bundle.getLong(new ObfuscatedString(new long[]{-6238789547176648551L, 4091711703204709640L, 2780329182473871726L, -1350414837474361471L}).toString());
        long zza = zzrVar.zzf.zza();
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(new ObfuscatedString(new long[]{-806766247615613469L, 4229851375077886085L, -2432611251145406394L}).toString());
        PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(new ObfuscatedString(new long[]{-2760581023451079437L, -8985418870896243809L, 5493213167611524541L, -1893959489743507313L}).toString());
        PendingIntent pendingIntent3 = (PendingIntent) bundle.getParcelable(new ObfuscatedString(new long[]{-3511632491072180266L, 8905315879859617763L, 2820769500105298172L, 7709009335759153004L, -4594016340955966878L}).toString());
        PendingIntent pendingIntent4 = (PendingIntent) bundle.getParcelable(new ObfuscatedString(new long[]{7491876172638662931L, 8512304471365057674L, 2874432780161393588L, 8594572280305749743L, 3219860620773676471L}).toString());
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-2225092856432405887L, -9208755472092963599L, 8576205263874041904L, 472948930459277280L, 6514537959041566979L}).toString(), zzk(bundle.getIntegerArrayList(new ObfuscatedString(new long[]{8890719348697250535L, 951646849519131954L, 1909429231155845906L, 7505178511545957145L, 592846648518058637L, -1886863033856129760L, 3345039912316329193L, 3468947646593809471L}).toString())));
        hashMap.put(new ObfuscatedString(new long[]{-6898988691705482447L, 2478110557759965298L, -7439004956955274096L, -433138595638985215L, 1605336838374107990L}).toString(), zzk(bundle.getIntegerArrayList(new ObfuscatedString(new long[]{-2263000416494903237L, 5195812398586302685L, -4380906409857601717L, -2567163938572140997L, 5868196364612200794L, -6448448620108266552L, 8160792394903888154L, 3001151371291732388L, -6616658617898743392L}).toString())));
        hashMap.put(new ObfuscatedString(new long[]{-7168933374825633278L, 8399295928605262712L, -2903446598215788608L}).toString(), zzk(bundle.getIntegerArrayList(new ObfuscatedString(new long[]{1753381558418635547L, -4103738642748238871L, -4015450769281715881L, 7992257684222110975L, -5188505021111329939L, 6492758045146185782L, 5889658116161673547L}).toString())));
        hashMap.put(new ObfuscatedString(new long[]{5204163377686090424L, -7024428545940529653L, -6113649859387682597L, -3649441443773817670L}).toString(), zzk(bundle.getIntegerArrayList(new ObfuscatedString(new long[]{-6047023505335794972L, -1122125186744654610L, -1205604508224665303L, -4213326875231335302L, 2119106175844380499L, 1576623813674989064L, 1275664867244957956L}).toString())));
        return AppUpdateInfo.zzb(str, i, i2, i3, num, i4, j, j2, j3, zza, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle zzi() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        Map zza = com.google.android.play.core.appupdate.internal.zzi.zza(new ObfuscatedString(new long[]{-5153193785165100108L, -4841127782180463301L, -1646043928459390102L}).toString());
        bundle2.putInt(new ObfuscatedString(new long[]{5970112606537176696L, -8382594033476145096L, -7201141812866131794L, 7051074430250598856L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{7759148882327014931L, 6745267685266082059L}).toString())).intValue());
        if (zza.containsKey(new ObfuscatedString(new long[]{3928048246324168973L, 302659695513353646L}).toString())) {
            bundle2.putInt(new ObfuscatedString(new long[]{8676523390117203379L, 6531396839174545487L, -8665614067997954377L, -5794768713310859167L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{6155205260031792689L, 2163907804614073844L}).toString())).intValue());
        }
        if (zza.containsKey(new ObfuscatedString(new long[]{-8606957058771927003L, -5676837599954575554L}).toString())) {
            bundle2.putInt(new ObfuscatedString(new long[]{-1361574624095219663L, 6979296417021835690L, -8572077513004400512L, -2100013142843081400L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{1103703360782198514L, 8947767956208983006L}).toString())).intValue());
        }
        bundle.putAll(bundle2);
        bundle.putInt(new ObfuscatedString(new long[]{8727141457966573624L, -8146499815696903617L, 775096369775965943L, -8853622215876459758L}).toString(), 11004);
        return bundle;
    }

    private static Task zzj() {
        zzb.zzb(new ObfuscatedString(new long[]{-1504286012829928994L, 5222113985453433657L, -1901447942083984238L}).toString(), -9);
        return Tasks.forException(new InstallException(-9));
    }

    private static HashSet zzk(@Nullable ArrayList arrayList) {
        HashSet hashSet = new HashSet();
        if (arrayList != null) {
            hashSet.addAll(arrayList);
        }
        return hashSet;
    }

    public final Task zzd(String str) {
        if (this.zza == null) {
            return zzj();
        }
        zzb.zzd(new ObfuscatedString(new long[]{-5743090381237073744L, -3490658321559435284L, -3529282827504888828L, 458455341915621909L}).toString(), str);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zza.zzs(new zzn(this, taskCompletionSource, taskCompletionSource, str), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task zze(String str) {
        if (this.zza == null) {
            return zzj();
        }
        zzb.zzd(new ObfuscatedString(new long[]{-4659861080879721224L, 4677437014473239620L, 3704007381359227465L, -8841758062021439132L}).toString(), str);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zza.zzs(new zzm(this, taskCompletionSource, str, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}

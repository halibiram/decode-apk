package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcsx implements zzbrq {
    private final Context zza;
    private final zzaym zzb;
    private final PowerManager zzc;

    public zzcsx(Context context, zzaym zzaymVar) {
        this.zza = context;
        this.zzb = zzaymVar;
        this.zzc = (PowerManager) context.getSystemService(new ObfuscatedString(new long[]{5508643303099792959L, -3876306607267070193L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzb(zzcta zzctaVar) {
        JSONObject jSONObject;
        Integer valueOf;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzayp zzaypVar = zzctaVar.zzf;
        if (zzaypVar == null) {
            jSONObject = new JSONObject();
        } else if (this.zzb.zzd() != null) {
            boolean z = zzaypVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(new ObfuscatedString(new long[]{1729779756512450888L, -4977800423623284714L, 5726193950415198867L}).toString(), this.zzb.zzb()).put(new ObfuscatedString(new long[]{4607356116999298911L, -8591605031912306071L, -968998040261840888L}).toString(), this.zzb.zzd()).put(new ObfuscatedString(new long[]{6616672157365784650L, -2802939208813696225L, 2264740356097776298L}).toString(), zzctaVar.zzd).put(new ObfuscatedString(new long[]{4872152056362489881L, 804843163018568089L}).toString(), this.zzb.zza()).put(new ObfuscatedString(new long[]{4742612536827342514L, -3657519680686267286L}).toString(), this.zzb.zzc()).put(new ObfuscatedString(new long[]{-3669265801863823205L, -2942697429752719016L}).toString(), false).put(new ObfuscatedString(new long[]{-5514899618337994533L, -8458793522119757273L, -2415260082072310133L}).toString(), false).put(new ObfuscatedString(new long[]{-2779895257492931901L, -8379763092227160973L}).toString(), zzctaVar.zzb).put(new ObfuscatedString(new long[]{-5045342727245631186L, 1840790403529082525L}).toString(), this.zzb.zze()).put(new ObfuscatedString(new long[]{-7936698628071641211L, 8603428864844887961L, -6565176966724348816L}).toString(), this.zzc.isInteractive()).put(new ObfuscatedString(new long[]{-5639465544097693231L, -8172746491162505520L}).toString(), com.google.android.gms.ads.internal.zzt.zzr().zze()).put(new ObfuscatedString(new long[]{-6164360369683063489L, 2398931089836724049L, -4456991232283355110L}).toString(), com.google.android.gms.ads.internal.zzt.zzr().zza()).put(new ObfuscatedString(new long[]{-317676015823324592L, -5417341156517770816L, -1690402056136034419L}).toString(), com.google.android.gms.ads.internal.util.zzac.zzb(this.zza.getApplicationContext()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfI)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.zza.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{-26907208905178414L, -5241259044681594566L}).toString());
                if (audioManager == null) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(audioManager.getMode());
                }
                if (valueOf != null) {
                    jSONObject3.put(new ObfuscatedString(new long[]{-5478004116675332255L, -3953992906128675090L, 4848293800218867560L}).toString(), valueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.zza.getSystemService(new ObfuscatedString(new long[]{-8932707622527355849L, -8725165735938051925L}).toString())).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            DisplayMetrics displayMetrics = this.zza.getResources().getDisplayMetrics();
            jSONObject3.put(new ObfuscatedString(new long[]{3043534323179043647L, -6847237941774972465L, 2917549320941195112L}).toString(), zzaypVar.zzb).put(new ObfuscatedString(new long[]{5767519584663699726L, 1441459409790266566L, 4299969716785690547L, -3152317677150627951L}).toString(), z).put(new ObfuscatedString(new long[]{5159370091536982632L, -7181212809233395546L}).toString(), new JSONObject().put(new ObfuscatedString(new long[]{1538344912203719584L, -7905420805618889534L}).toString(), zzaypVar.zzc.top).put(new ObfuscatedString(new long[]{3067983456160336866L, -3740990794351628764L}).toString(), zzaypVar.zzc.bottom).put(new ObfuscatedString(new long[]{-3329160024633495957L, -6105208464331063606L}).toString(), zzaypVar.zzc.left).put(new ObfuscatedString(new long[]{-4961211836685067540L, 1539732873233241418L}).toString(), zzaypVar.zzc.right)).put(new ObfuscatedString(new long[]{2284447300150385858L, -9047895134433786080L}).toString(), new JSONObject().put(new ObfuscatedString(new long[]{-5705014668970200605L, 58865604715711370L}).toString(), zzaypVar.zzd.top).put(new ObfuscatedString(new long[]{1731526846142042136L, -3894308239805614124L}).toString(), zzaypVar.zzd.bottom).put(new ObfuscatedString(new long[]{-4031381204887184029L, 5445534233259511804L}).toString(), zzaypVar.zzd.left).put(new ObfuscatedString(new long[]{5214651634408528236L, 6257384341356025410L}).toString(), zzaypVar.zzd.right)).put(new ObfuscatedString(new long[]{3350880078357448991L, -3495666493139726173L, -4833577297085372673L}).toString(), new JSONObject().put(new ObfuscatedString(new long[]{8446152288630873607L, 8937487294565446625L}).toString(), zzaypVar.zze.top).put(new ObfuscatedString(new long[]{-2070104516439916027L, -1317381922943155396L}).toString(), zzaypVar.zze.bottom).put(new ObfuscatedString(new long[]{-7073543338911404331L, -5045379072734938942L}).toString(), zzaypVar.zze.left).put(new ObfuscatedString(new long[]{-7084641506184453422L, -8917193257121287545L}).toString(), zzaypVar.zze.right)).put(new ObfuscatedString(new long[]{-1239225906953505082L, 2786374576037387142L, -3200085195113387162L, -6027931117050349366L}).toString(), zzaypVar.zzf).put(new ObfuscatedString(new long[]{-2377839910388606469L, -7928382310216657054L, -7077406540040963311L}).toString(), new JSONObject().put(new ObfuscatedString(new long[]{-6551555159330685577L, 987659760134982139L}).toString(), zzaypVar.zzg.top).put(new ObfuscatedString(new long[]{-6791624478056334417L, 4312325377072689985L}).toString(), zzaypVar.zzg.bottom).put(new ObfuscatedString(new long[]{4638897536322365522L, 3990772367742428327L}).toString(), zzaypVar.zzg.left).put(new ObfuscatedString(new long[]{5733044661054731874L, -8389228566197283140L}).toString(), zzaypVar.zzg.right)).put(new ObfuscatedString(new long[]{-2379509524312847016L, -5097681192310244155L, 4358559466000409241L, 1755212631038809973L}).toString(), zzaypVar.zzh).put(new ObfuscatedString(new long[]{2342260388973311805L, -5836069223802605890L}).toString(), new JSONObject().put(new ObfuscatedString(new long[]{2750034713857154792L, -4822678170926666404L}).toString(), zzaypVar.zzi.top).put(new ObfuscatedString(new long[]{369735260513433796L, -27775334879268107L}).toString(), zzaypVar.zzi.bottom).put(new ObfuscatedString(new long[]{-905015183350923686L, 7763876769779413998L}).toString(), zzaypVar.zzi.left).put(new ObfuscatedString(new long[]{-8666721550733558987L, 4078914108771954032L}).toString(), zzaypVar.zzi.right)).put(new ObfuscatedString(new long[]{2464169193602207991L, -8949609850399682789L, -7855898321808191237L}).toString(), displayMetrics.density);
            jSONObject3.put(new ObfuscatedString(new long[]{623455848006981176L, -7673275420835252134L, 7859621326587310510L}).toString(), zzctaVar.zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbp)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzaypVar.zzk;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put(new ObfuscatedString(new long[]{1939650826423924812L, -232022870111199898L}).toString(), rect2.top).put(new ObfuscatedString(new long[]{-6861002045788360780L, 4515698337429007672L}).toString(), rect2.bottom).put(new ObfuscatedString(new long[]{-2640662641644401715L, 2393035972952637363L}).toString(), rect2.left).put(new ObfuscatedString(new long[]{5765199038862453289L, 4729032252640517184L}).toString(), rect2.right));
                    }
                }
                jSONObject3.put(new ObfuscatedString(new long[]{-5453681454742382550L, -5848554449668129976L, -2569836845647921302L, 2599711719338452183L}).toString(), jSONArray2);
            }
            if (!TextUtils.isEmpty(zzctaVar.zze)) {
                jSONObject3.put(new ObfuscatedString(new long[]{-2215538927496098670L, 8346274494290470146L, -7906633012796153788L}).toString(), new ObfuscatedString(new long[]{9065411526141113253L, -182561363307533115L}).toString());
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException(new ObfuscatedString(new long[]{-8848559783201140618L, -2774961380762349431L, -5698311691219182073L, 8537341811925358783L, 7690963150801294671L}).toString());
        }
        jSONArray.put(jSONObject);
        jSONObject2.put(new ObfuscatedString(new long[]{-4650597411180792049L, 2419204469903994213L}).toString(), jSONArray);
        return jSONObject2;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbrj {
    private final Context zzb;
    private final String zzc;
    private final zzcei zzd;

    @Nullable
    private final zzfnc zze;
    private final com.google.android.gms.ads.internal.util.zzbd zzf;
    private final com.google.android.gms.ads.internal.util.zzbd zzg;

    @Nullable
    private zzbri zzh;
    private final Object zza = new Object();
    private int zzi = 1;

    public zzbrj(Context context, zzcei zzceiVar, String str, com.google.android.gms.ads.internal.util.zzbd zzbdVar, com.google.android.gms.ads.internal.util.zzbd zzbdVar2, @Nullable zzfnc zzfncVar) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = zzceiVar;
        this.zze = zzfncVar;
        this.zzf = zzbdVar;
        this.zzg = zzbdVar2;
    }

    public final zzbrd zzb(@Nullable zzavi zzaviVar) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3555527158968135795L, -650453052935687639L, -1930962370931471326L, 6968352050683268272L, 8172411302408580781L, 8038195203971664118L}).toString());
        synchronized (this.zza) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8915102945494563807L, -6886725968491245864L, 2063730284644584073L, 2731011048875196460L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8640330376489599146L, 1898104668359083056L, -12873747750600341L, -8893392010803756896L, -1794608436421600451L, 5134772306285612313L, 4162205312215394521L}).toString());
                synchronized (this.zza) {
                    try {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{9026895807770228861L, 1659984196979446296L, -8562881172916175240L, 2623852581453190152L, -6181816107161336158L, -7654649990165487663L}).toString());
                        zzbri zzbriVar = this.zzh;
                        if (zzbriVar != null && this.zzi == 0) {
                            zzbriVar.zzi(new zzcey() { // from class: com.google.android.gms.internal.ads.zzbqp
                                @Override // com.google.android.gms.internal.ads.zzcey
                                public final void zza(Object obj) {
                                    zzbrj.this.zzk((zzbqe) obj);
                                }
                            }, new zzcew() { // from class: com.google.android.gms.internal.ads.zzbqq
                                @Override // com.google.android.gms.internal.ads.zzcew
                                public final void zza() {
                                }
                            });
                        }
                    } finally {
                    }
                }
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7000014960073130973L, 7540554221474847824L, 9131613538952829666L, -1343403563344948894L, -384360567652140384L, -4134864649515142151L}).toString());
                zzbri zzbriVar2 = this.zzh;
                if (zzbriVar2 != null && zzbriVar2.zze() != -1) {
                    int i = this.zzi;
                    if (i == 0) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7902255446013155876L, 4955123560529697926L, -1200949118544248996L, -2721506852805169770L, 8810958447491568467L, 8784206202465913332L}).toString());
                        return this.zzh.zza();
                    }
                    if (i == 1) {
                        this.zzi = 2;
                        zzd(null);
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2029197084667142667L, -4068902817287134807L, 724073654867981756L, 5381990048216499853L, -4885957939171699222L, 9003930468949329305L, -6727536436519920779L}).toString());
                        return this.zzh.zza();
                    }
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5324222302124231797L, 4286665140915165532L, -3733873381927545264L, 2695648575828893676L, -4257945822254273089L, -5952837739893610585L}).toString());
                    return this.zzh.zza();
                }
                this.zzi = 2;
                this.zzh = zzd(null);
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3800692113470124405L, 5531895985732465169L, -1631403838910522948L, 7375475966851530801L, 7508073444542604025L, 3490725514948140556L, 8478271495020698841L}).toString());
                return this.zzh.zza();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbri zzd(@Nullable zzavi zzaviVar) {
        zzfmo zza = zzfmn.zza(this.zzb, 6);
        zza.zzh();
        final zzbri zzbriVar = new zzbri(this.zzg);
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2935285094185251207L, -5059680661159173067L, -2198607285692789949L, 2358055977726088053L, -2527051569793321913L, -8436765000685564948L, -7797896218383337871L}).toString());
        final zzavi zzaviVar2 = null;
        zzcep.zze.execute(new Runnable(zzaviVar2, zzbriVar) { // from class: com.google.android.gms.internal.ads.zzbqt
            public final /* synthetic */ zzbri zzb;

            {
                this.zzb = zzbriVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbrj.this.zzj(null, this.zzb);
            }
        });
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5377967449629409637L, 7922316456407950942L, -7784836148441486444L, 1842588569757210710L, -2810861788469855712L, -5585840436729572490L}).toString());
        zzbriVar.zzi(new zzbqy(this, zzbriVar, zza), new zzbqz(this, zzbriVar, zza));
        return zzbriVar;
    }

    public final /* synthetic */ void zzi(zzbri zzbriVar, final zzbqe zzbqeVar, ArrayList arrayList, long j) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8992287565491346773L, 7347379017699125776L, 7083884853784022852L, -705509088574385205L, 1706638473971598656L, 6551622177502401174L, -6827657838424180932L, 7525790108974841035L, 300513169563945276L, 5462503539708845235L, -1211123459077275357L, -5893399346935596783L}).toString());
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3296302856952288890L, -6794965947582979309L, 8506452124997876749L, -8775301191764862385L, 206689736958828743L, -555313187907091173L, -1563007213770658739L, 6874250635804928282L, 664441014976775464L, -527812163616123164L, -4411178020677943231L}).toString());
            if (zzbriVar.zze() != -1 && zzbriVar.zze() != 1) {
                zzbriVar.zzg();
                zzgey zzgeyVar = zzcep.zze;
                Objects.requireNonNull(zzbqeVar);
                zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbqe.this.zzc();
                    }
                });
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6615449786143429865L, -4544547891557374668L, 8792031973015524202L, 8063268399906777409L, 3499316994865082512L}).toString() + String.valueOf(com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzc)) + new ObfuscatedString(new long[]{1088559826421435459L, 3548055188711353193L, -2216048766139994582L, 7635872453465770106L, -3165394062417613540L, -8548982815335538581L, 6290782304496039L, -7749907570073683013L, -9057401683585928003L}).toString() + zzbriVar.zze() + new ObfuscatedString(new long[]{5110933289062760863L, 8921198426528887264L, -4401797010125458847L, 2677597451840687171L, -7747841924918780992L, 5578872836549709872L}).toString() + this.zzi + new ObfuscatedString(new long[]{-4312436902437960646L, -5652417804070297937L, -6677810325315743780L, 5896465335155111452L, -6326612120340988155L, -8223162736551014838L, 3279751625037434559L, -6513289317981150504L, -2900674998749302715L}).toString() + String.valueOf(arrayList.get(0)) + new ObfuscatedString(new long[]{-9131764049415267083L, 5343189260133894953L, 7711869027098622851L, 288283499279591580L, -7823228859944029470L, 27280916529620163L, 7213029920677466975L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - j) + new ObfuscatedString(new long[]{-4695658320199183167L, 7048445551012859926L, 8010483700104439556L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3237493026235154401L, -1116679964295464209L, -6716478587377553652L, 7056004123733964706L, 8712604034395714743L, 5866380600443678842L, 3316611162211069647L, 2089756932948665008L, -2718151550081972118L, -8530597389129033652L, 4787050243430925384L}).toString());
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1391359078754480478L, -4401638689459623021L, -8404962997864628331L, 4765985240899950220L, -7977229642385423808L, 8211463220129863024L, -6281476806299862323L, -8569838638871818874L, 1255806316597494900L, 1650010755802131536L, 1110883596595033793L, -6198975521039952447L, 4576528181547888001L, -5803420082518607916L, -5049100904625587866L}).toString());
        }
    }

    public final /* synthetic */ void zzj(zzavi zzaviVar, zzbri zzbriVar) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        try {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4288738998835110758L, 8990751610517383396L, -4259087826882143167L, -5452238600020342865L, 3003241419212271683L, -1710935621873725580L, -3314210734352696660L, 2837828862901158631L}).toString());
            zzbqm zzbqmVar = new zzbqm(this.zzb, this.zzd, null, null);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3690968801910817368L, -4221238163137117319L, -2168477673855255288L, -8603347274666513413L, 8175958978566172271L, -3565500650412584869L, 3681254221723564937L, 7503182164293180124L}).toString());
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-908772403340709303L, -8410985090748562463L, -2431106701680186786L, 2548987455371537590L, -6526620269889533548L, -8877845709663482599L, -2819316840869914666L, 5585948356785411810L, -3675269085282367312L}).toString());
            zzbqmVar.zzk(new zzbqs(this, arrayList, currentTimeMillis, zzbriVar, zzbqmVar));
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8228216256788511445L, 4656816174945528763L, 4825647570048008707L, -7162809037486563974L, 4992984381153277098L, 1567462512199874199L, 4936301660815367115L, 4774448088845934951L, -3984670406566359552L, -2625185670504722185L}).toString());
            zzbqmVar.zzq(new ObfuscatedString(new long[]{2823026223473728354L, 8105868042376620293L, 2731690698091558028L}).toString(), new zzbqu(this, currentTimeMillis, zzbriVar, zzbqmVar));
            com.google.android.gms.ads.internal.util.zzcc zzccVar = new com.google.android.gms.ads.internal.util.zzcc();
            zzbqv zzbqvVar = new zzbqv(this, null, zzbqmVar, zzccVar);
            zzccVar.zzb(zzbqvVar);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6906821291178023082L, 3752040457910713612L, -3460026927067332615L, -4076243222464902318L, 8415824715583419992L, 8187052185573862566L, -4742983000821129971L, -5996836923090362978L, 7099599891987443510L, 7085460502098297529L}).toString());
            zzbqmVar.zzq(new ObfuscatedString(new long[]{-4961085924390418617L, 3963831424546154432L, 5938276027122348903L}).toString(), zzbqvVar);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4609424188151092615L, -2494504588095667797L, -8859616903619273631L, -959235447939283257L, -759364802928399137L, -1960121266823720622L}).toString().concat(String.valueOf(this.zzc)));
            if (this.zzc.endsWith(new ObfuscatedString(new long[]{6655327296956189081L, 8213816048145678859L}).toString())) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1621143627605599295L, 536354641313598844L, 625176721674790553L, 5048252676887190911L, 5504197034170002626L, -1640476957237371433L, -3414478071063959267L, 5544740431816690639L}).toString());
                zzbqmVar.zzh(this.zzc);
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2557994677768655923L, -1953176441687662303L, 4995897507606786229L, 8956043828062124398L, 5827322020404146655L, 3886924105383078868L, -556580063796125543L, 650371785560408258L}).toString());
            } else if (this.zzc.startsWith(new ObfuscatedString(new long[]{-7449214656954960779L, -6113791144926008582L}).toString())) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-390126350970639902L, -4396975001866969530L, -316891706782817717L, -3229437881016340116L, 9172399298508978099L, 6781907643912057611L, -831613649072003794L}).toString());
                zzbqmVar.zzf(this.zzc);
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8758263221330896102L, -2998279962699824373L, -8589133928087569342L, 6414914992431578050L, 7061494479979957547L, 6239232467828655600L, -222059904989578564L}).toString());
            } else {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3649832498467637349L, 4847210157956739682L, 715130383390596871L, 397259470342806310L, -4139983107686020042L, -909073869433555840L, 7515165250549862893L, 5972160206616947708L}).toString());
                zzbqmVar.zzg(this.zzc);
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8259681399066706603L, -145020339471541710L, -8498123387704693264L, 4314175080933561531L, 3041620360504912234L, 6846054151905771940L, -8077761312516495985L, -2999206279891674861L}).toString());
            }
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5191169553307591861L, 4788480036861612499L, -1114169075989556748L, -3669983123650400522L, 1777031141648745230L, -2478810447615572198L, 8849054422339521995L, 9199846033991160268L, -971883945516358828L, 1826111990594583726L}).toString());
            com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new zzbqx(this, zzbriVar, zzbqmVar, arrayList, currentTimeMillis), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzd)).intValue());
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4254196499220182758L, 4534826743982092804L, 1583175980118516991L, -2902419231649276740L}).toString(), th);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{6174757231425341859L, 8822115822105416295L, 7543443280516866089L, 6388257834475022557L, -6701867300427447519L, -1211380194503930969L, 626783046863452085L}).toString());
            zzbriVar.zzg();
        }
    }

    public final /* synthetic */ void zzk(zzbqe zzbqeVar) {
        if (zzbqeVar.zzi()) {
            this.zzi = 1;
        }
    }
}

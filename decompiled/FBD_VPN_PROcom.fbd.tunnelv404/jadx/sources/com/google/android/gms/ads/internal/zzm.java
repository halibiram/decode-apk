package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfij;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzm extends WebViewClient {
    final /* synthetic */ zzs zza;

    public zzm(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzbh zzbhVar;
        zzbh zzbhVar2;
        zzbh zzbhVar3;
        zzbh zzbhVar4;
        zzs zzsVar = this.zza;
        zzbhVar = zzsVar.zzg;
        if (zzbhVar != null) {
            try {
                zzbhVar2 = zzsVar.zzg;
                zzbhVar2.zzf(zzfij.zzd(1, null, null));
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-3792473274625179890L, -307581891174773926L, -954925571486613689L, -5587897855441544189L, 6071549856846192590L, 1371784898736911989L}).toString(), e);
            }
        }
        zzs zzsVar2 = this.zza;
        zzbhVar3 = zzsVar2.zzg;
        if (zzbhVar3 != null) {
            try {
                zzbhVar4 = zzsVar2.zzg;
                zzbhVar4.zze(0);
            } catch (RemoteException e2) {
                zzcec.zzl(new ObfuscatedString(new long[]{4683223624767318291L, -492677981842048679L, 8513548139342679987L, 1137600328029435017L, 2670464471008854027L, 2309507676195016843L}).toString(), e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzbh zzbhVar;
        zzbh zzbhVar2;
        zzbh zzbhVar3;
        zzbh zzbhVar4;
        zzbh zzbhVar5;
        zzbh zzbhVar6;
        zzbh zzbhVar7;
        zzbh zzbhVar8;
        zzbh zzbhVar9;
        zzbh zzbhVar10;
        zzbh zzbhVar11;
        zzbh zzbhVar12;
        zzbh zzbhVar13;
        if (str.startsWith(this.zza.zzq())) {
            return false;
        }
        if (str.startsWith(new ObfuscatedString(new long[]{492902663619884570L, 3944804936918262923L, 3208802198329754761L, 5466735435776702567L}).toString())) {
            zzs zzsVar = this.zza;
            zzbhVar10 = zzsVar.zzg;
            if (zzbhVar10 != null) {
                try {
                    zzbhVar11 = zzsVar.zzg;
                    zzbhVar11.zzf(zzfij.zzd(3, null, null));
                } catch (RemoteException e) {
                    zzcec.zzl(new ObfuscatedString(new long[]{7980784076224749778L, -2188169700965073953L, -3043245190365195494L, -2918484751520499363L, 5654331250168437119L, -8433337119979167538L}).toString(), e);
                }
            }
            zzs zzsVar2 = this.zza;
            zzbhVar12 = zzsVar2.zzg;
            if (zzbhVar12 != null) {
                try {
                    zzbhVar13 = zzsVar2.zzg;
                    zzbhVar13.zze(3);
                } catch (RemoteException e2) {
                    zzcec.zzl(new ObfuscatedString(new long[]{5211869584040167511L, 6687354424257151478L, 41141729284603803L, -3293465814856398832L, 3928052767818553593L, 3572511479656155462L}).toString(), e2);
                }
            }
            this.zza.zzV(0);
            return true;
        }
        if (str.startsWith(new ObfuscatedString(new long[]{6906180079852688983L, -2152289425760154194L, -3946333286050425265L, -6762191088631655436L}).toString())) {
            zzs zzsVar3 = this.zza;
            zzbhVar6 = zzsVar3.zzg;
            if (zzbhVar6 != null) {
                try {
                    zzbhVar7 = zzsVar3.zzg;
                    zzbhVar7.zzf(zzfij.zzd(1, null, null));
                } catch (RemoteException e3) {
                    zzcec.zzl(new ObfuscatedString(new long[]{9155637995957631274L, 4568728703818588027L, -2452517351459293167L, -6930940459408482073L, -6233211806711176162L, 5197139411215567691L}).toString(), e3);
                }
            }
            zzs zzsVar4 = this.zza;
            zzbhVar8 = zzsVar4.zzg;
            if (zzbhVar8 != null) {
                try {
                    zzbhVar9 = zzsVar4.zzg;
                    zzbhVar9.zze(0);
                } catch (RemoteException e4) {
                    zzcec.zzl(new ObfuscatedString(new long[]{8732138464432250684L, 5183027372122719126L, -3670062832883370180L, -273154808935618570L, -2046638606677254821L, 7065854034038448562L}).toString(), e4);
                }
            }
            this.zza.zzV(0);
            return true;
        }
        if (str.startsWith(new ObfuscatedString(new long[]{-6528571722379865031L, -9123106007216409486L, -2829998482449682936L}).toString())) {
            zzs zzsVar5 = this.zza;
            zzbhVar4 = zzsVar5.zzg;
            if (zzbhVar4 != null) {
                try {
                    zzbhVar5 = zzsVar5.zzg;
                    zzbhVar5.zzi();
                } catch (RemoteException e5) {
                    zzcec.zzl(new ObfuscatedString(new long[]{-260560781462615845L, -6898925670797870266L, -5325277981043991502L, -8322004805496211084L, 2574069741804396814L, -3846091349695915758L}).toString(), e5);
                }
            }
            this.zza.zzV(this.zza.zzb(str));
            return true;
        }
        if (str.startsWith(new ObfuscatedString(new long[]{6530620989721762685L, 9099742144676578322L}).toString())) {
            return true;
        }
        zzs zzsVar6 = this.zza;
        zzbhVar = zzsVar6.zzg;
        if (zzbhVar != null) {
            try {
                zzbhVar2 = zzsVar6.zzg;
                zzbhVar2.zzc();
                zzbhVar3 = this.zza.zzg;
                zzbhVar3.zzh();
            } catch (RemoteException e6) {
                zzcec.zzl(new ObfuscatedString(new long[]{218153566558206736L, -3495617629540962315L, -3486902614398218361L, 444503544775463022L, -8350332236180869985L, -1331273794918306326L}).toString(), e6);
            }
        }
        zzs.zzw(this.zza, zzs.zzo(this.zza, str));
        return true;
    }
}

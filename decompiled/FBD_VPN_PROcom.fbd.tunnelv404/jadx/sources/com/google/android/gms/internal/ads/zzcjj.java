package com.google.android.gms.internal.ads;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzcjj extends WebChromeClient {
    private final zzcjk zza;

    public zzcjj(zzcjk zzcjkVar) {
        this.zza = zzcjkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final Context zzb(WebView webView) {
        if (!(webView instanceof zzcjk)) {
            return webView.getContext();
        }
        zzcjk zzcjkVar = (zzcjk) webView;
        Activity zzi = zzcjkVar.zzi();
        if (zzi != null) {
            return zzi;
        }
        return zzcjkVar.getContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzcjk)) {
            zzcec.zzj(new ObfuscatedString(new long[]{-6083629383835579284L, 8720754956737774563L, -5626223371738590260L, 1558519155569502049L, 7878735909286243722L, -5152985278008619238L, -6141694930240237441L, -7815666165714912580L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzm zzL = ((zzcjk) webView).zzL();
        if (zzL == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{3782502415716856871L, 1583003811982037631L, 8365306309242243300L, 6971677050526622530L, 6867308692289167706L, 6702804567774615693L, -2545524911382651358L, -5264438189532309023L, 4436827348098477298L}).toString());
        } else {
            zzL.zzb();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2896258125894767829L, 7364180205166626166L}).toString());
        sb.append(message);
        sb.append(new ObfuscatedString(new long[]{5485734036997933885L, 3419158926641503736L}).toString());
        sb.append(sourceId);
        sb.append(new ObfuscatedString(new long[]{-871576317002305899L, -5254377730039976657L}).toString());
        sb.append(lineNumber);
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8623476495170142434L, 4324593884266751911L}), sb);
        if (m3332x9d12c1f4.contains(new ObfuscatedString(new long[]{1652657032837256008L, 9097811200707989394L, -7914207444365022032L, 4719588647147668554L}).toString())) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = zzcji.zza[consoleMessage.messageLevel().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4) {
                    if (i != 5) {
                        zzcec.zzi(m3332x9d12c1f4);
                    } else {
                        zzcec.zze(m3332x9d12c1f4);
                    }
                } else {
                    zzcec.zzi(m3332x9d12c1f4);
                }
            } else {
                zzcec.zzj(m3332x9d12c1f4);
            }
        } else {
            zzcec.zzg(m3332x9d12c1f4);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.zza.zzH() != null) {
            webView2.setWebViewClient(this.zza.zzH());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072L, j4) + j, 1048576L);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            zzcjk zzcjkVar = this.zza;
            com.google.android.gms.ads.internal.zzt.zzp();
            if (!com.google.android.gms.ads.internal.util.zzt.zzz(zzcjkVar.getContext(), new ObfuscatedString(new long[]{-2208204022679802638L, -5250684425120417515L, 2878719269025237874L, 5850724186304131328L, 2392868827626367483L, 4698221321843828413L}).toString())) {
                zzcjk zzcjkVar2 = this.zza;
                com.google.android.gms.ads.internal.zzt.zzp();
                if (!com.google.android.gms.ads.internal.util.zzt.zzz(zzcjkVar2.getContext(), new ObfuscatedString(new long[]{4780690664955700977L, 817805952736647764L, -961580496781907001L, -4635734185251807052L, -98433591516418477L, 8966514141797246950L, 4887786684559359172L}).toString())) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zza.zzL();
        if (zzL == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{6818503500571776037L, 4688156001983934046L, 7289127692240097691L, -7944365523227103754L, -4844951866221761498L, 2006852585445053996L, -2987449460363919271L, -3729926706764555972L}).toString());
        } else {
            zzL.zzg();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), new ObfuscatedString(new long[]{8385885527163738826L, 2341322669840128494L}).toString(), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), new ObfuscatedString(new long[]{1893025040289064733L, -7100858608503919423L, 770948393940962127L}).toString(), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), new ObfuscatedString(new long[]{7423198572664766711L, 3970286362212762978L}).toString(), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zzb(webView), new ObfuscatedString(new long[]{-397911930400942017L, 1552754127044255841L}).toString(), str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zza.zzL();
        if (zzL == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{4287210243873176557L, 7959486282905846333L, -4171753660325828886L, -810675824740559856L, -7265192224988766586L, 3221792062663968049L, 2968930322864977686L, -459539077729929816L}).toString());
            customViewCallback.onCustomViewHidden();
        } else {
            zzL.zzC(view, customViewCallback);
            zzL.zzA(i);
        }
    }

    public final boolean zza(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zzcjk zzcjkVar;
        com.google.android.gms.ads.internal.zzb zzd;
        try {
            zzcjkVar = this.zza;
        } catch (WindowManager.BadTokenException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{7159178129456356065L, 6124706293017320027L, 360092517203678229L, -3178920995561341229L}).toString(), e);
        }
        if (zzcjkVar != null && zzcjkVar.zzN() != null && this.zza.zzN().zzd() != null && (zzd = this.zza.zzN().zzd()) != null && !zzd.zzc()) {
            zzd.zzb(new ObfuscatedString(new long[]{-3190659736072629535L, 7487328241637297196L}).toString() + str + new ObfuscatedString(new long[]{-2062654885479436716L, 782617694897262532L}).toString() + str3 + new ObfuscatedString(new long[]{-1812960138877461865L, 1604646734453935160L}).toString());
            return false;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(context);
        zzJ.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            zzJ.setView(linearLayout).setPositiveButton(R.string.ok, new zzcjh(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new zzcjg(jsPromptResult)).setOnCancelListener(new zzcjf(jsPromptResult)).create().show();
        } else {
            zzJ.setMessage(str3).setPositiveButton(R.string.ok, new zzcje(jsResult)).setNegativeButton(R.string.cancel, new zzcjd(jsResult)).setOnCancelListener(new zzcjc(jsResult)).create().show();
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}

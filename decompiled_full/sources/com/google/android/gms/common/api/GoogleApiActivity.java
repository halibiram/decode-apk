package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@KeepName
/* loaded from: classes2.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    @VisibleForTesting
    protected int zaa = 0;

    @NonNull
    public static Intent zaa(@NonNull Context context, @NonNull PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra(new ObfuscatedString(new long[]{-377039085717678373L, 1572750266467563543L, 5145285202317417289L}).toString(), pendingIntent);
        intent.putExtra(new ObfuscatedString(new long[]{8662032224909300598L, 7234148428374411854L, 7024263983833972446L, -2485790351992977939L}).toString(), i);
        intent.putExtra(new ObfuscatedString(new long[]{3154464748211288623L, -5307352440861952160L, 7355553290095611026L}).toString(), z);
        return intent;
    }

    private final void zab() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            new ObfuscatedString(new long[]{-3991868743514322392L, -3478297310157260358L, -5326168298854664517L, -3515304043563074602L}).toString();
            new ObfuscatedString(new long[]{261888060537281359L, 1097091054101774844L, -3074218021961680683L, -282769191095922594L, -4741515156777019362L}).toString();
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get(new ObfuscatedString(new long[]{-8091757497780537291L, -4819835540626327788L, 6000671022243194997L}).toString());
        Integer num = (Integer) extras.get(new ObfuscatedString(new long[]{6813533898761607882L, -5982028952773186526L, 7705390561254928655L}).toString());
        if (pendingIntent == null && num == null) {
            new ObfuscatedString(new long[]{2992222680511604653L, -5529398598687199655L, -4727763922001613552L, 6112212293872527221L}).toString();
            new ObfuscatedString(new long[]{1029037411776461886L, 3899244950158009137L, 5934337418736995048L, 4532198305395387993L, -7603464125520415393L, 2804707779465891652L}).toString();
            finish();
            return;
        }
        if (pendingIntent != null) {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.zaa = 1;
                return;
            } catch (ActivityNotFoundException unused) {
                if (extras.getBoolean(new ObfuscatedString(new long[]{8915277852828715281L, 8320886435647829881L, 2789665909468478783L}).toString(), true)) {
                    GoogleApiManager.zam(this).zaz(new ConnectionResult(22, null), getIntent().getIntExtra(new ObfuscatedString(new long[]{5500506313171531136L, 8736892142795126228L, -4923029358163164633L, 5324455154049332049L}).toString(), -1));
                } else {
                    String obj = pendingIntent.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 36);
                    sb.append(new ObfuscatedString(new long[]{1263119864033906337L, -3549601133772809387L, -6035925441199992722L, 7645859327365630556L, -2823919790589535902L, -90504678416160397L}).toString());
                    sb.append(obj);
                    String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5246913757306456085L, -2577800443681392495L}), sb);
                    if (Build.FINGERPRINT.contains(new ObfuscatedString(new long[]{3905711604724066259L, 5019501257097293673L}).toString())) {
                        m3332x9d12c1f4.concat(new ObfuscatedString(new long[]{7556982451966897702L, 1554454693569360728L, 826663127686973896L, -1957351022459228889L, 5537431836687661474L, -6649495243943138447L, 5709145330835367196L, -1164789817999112464L, -6898044551281841754L, 4079818600519495632L, 1368673939542790344L, 8259513205143133990L, 3090521945160325920L, 945022510769290889L, -3237678978110808766L, -3343791895031056205L, -8446105789818280019L}).toString());
                    }
                    new ObfuscatedString(new long[]{7634911539187078586L, 3511492498324349284L, -1982209104262869334L, -8079121575323196947L}).toString();
                }
                this.zaa = 1;
                finish();
                return;
            } catch (IntentSender.SendIntentException unused2) {
                new ObfuscatedString(new long[]{8563947236412138682L, -4079653656254801714L, 6210809865120393542L, -1016279900667953745L}).toString();
                new ObfuscatedString(new long[]{-8400235724511782538L, -611294960527312383L, 3168456039998841734L, 6836801698318078556L, 757124972624366741L}).toString();
                finish();
                return;
            }
        }
        GoogleApiAvailability.getInstance().showErrorDialogFragment(this, ((Integer) Preconditions.checkNotNull(num)).intValue(), 2, this);
        this.zaa = 1;
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @NonNull Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra(new ObfuscatedString(new long[]{-975978066144391711L, -254592888930425113L, -2213607113899087436L}).toString(), true);
            this.zaa = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                GoogleApiManager zam = GoogleApiManager.zam(this);
                if (i2 != -1) {
                    if (i2 == 0) {
                        zam.zaz(new ConnectionResult(13, null), getIntent().getIntExtra(new ObfuscatedString(new long[]{-7757933060169372603L, -3530704782634523450L, -7954555253442964347L, 3046347835013087214L}).toString(), -1));
                    }
                } else {
                    zam.zaA();
                }
            }
        } else if (i == 2) {
            this.zaa = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        this.zaa = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zaa = bundle.getInt(new ObfuscatedString(new long[]{-270843686410086269L, -6589486858374183061L, 5225142571436367950L}).toString());
        }
        if (this.zaa != 1) {
            zab();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putInt(new ObfuscatedString(new long[]{-8450812525120972235L, -661470317752088992L, -8096837032109980573L}).toString(), this.zaa);
        super.onSaveInstanceState(bundle);
    }
}

package com.v2ray.ang.viewmodel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.service.V2RayServiceManager;
import defpackage.RunnableC0938xaa9be1e3;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;

@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"com/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1\n+ 2 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n*L\n1#1,505:1\n190#2,4:506\n*S KotlinDebug\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1\n*L\n492#1:506,4\n*E\n"})
/* loaded from: classes3.dex */
public final class MainViewModel$mMsgReceiver$1 extends BroadcastReceiver {
    final /* synthetic */ MainViewModel this$0;

    public MainViewModel$mMsgReceiver$1(MainViewModel mainViewModel) {
        this.this$0 = mainViewModel;
    }

    public static final void onReceive$lambda$0(Intent intent, MainViewModel mainViewModel) {
        String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{8071697711821442468L, 3505347502810535330L}).toString());
        if (stringExtra == null || !StringsKt__StringsKt.contains$default((CharSequence) stringExtra, (CharSequence) new ObfuscatedString(new long[]{-8855309721261414454L, -1443016867361970754L}).toString(), false, 2, (Object) null)) {
            mainViewModel.clearAllTestDelay();
            mainViewModel.removeAllServer();
            mainViewModel.removeInvalidServer();
            mainViewModel.removeDuplicateServer();
            V2RayServiceManager.stopVService(mainViewModel.getApplication());
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m1741xfbe0c504(Intent intent, MainViewModel mainViewModel) {
        onReceive$lambda$0(intent, mainViewModel);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context ctx, Intent intent) {
        Integer num;
        Object obj;
        Object obj2 = null;
        if (intent != null) {
            num = Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{8397615954705968842L, 7133346114147041450L}).toString(), 0));
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 11) {
            this.this$0.isRunning().setValue(Boolean.TRUE);
            return;
        }
        if (num != null && num.intValue() == 12) {
            this.this$0.isRunning().setValue(Boolean.FALSE);
            return;
        }
        if (num != null && num.intValue() == 31) {
            this.this$0.isRunning().setValue(Boolean.TRUE);
            return;
        }
        if (num != null && num.intValue() == 32) {
            this.this$0.isRunning().setValue(Boolean.FALSE);
            return;
        }
        if (num != null && num.intValue() == 41) {
            this.this$0.isRunning().setValue(Boolean.FALSE);
            return;
        }
        if (num != null && num.intValue() == 61) {
            this.this$0.getUpdateTestResultAction().setValue(intent.getStringExtra(new ObfuscatedString(new long[]{-5845182062572427190L, -7265042712887265574L}).toString()));
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0938xaa9be1e3(intent, this.this$0, 1), 100L);
            this.this$0.isRunning().setValue(Boolean.TRUE);
            return;
        }
        if (num != null && num.intValue() == 71) {
            String obfuscatedString = new ObfuscatedString(new long[]{1252928942020887627L, 2840520957788711465L}).toString();
            if (Build.VERSION.SDK_INT >= 33) {
                obj = intent.getSerializableExtra(obfuscatedString, Pair.class);
            } else {
                Object serializableExtra = intent.getSerializableExtra(obfuscatedString);
                if (serializableExtra instanceof Pair) {
                    obj2 = serializableExtra;
                }
                obj = (Pair) obj2;
            }
            Pair pair = (Pair) obj;
            if (pair == null) {
                return;
            }
            MmkvManager.INSTANCE.encodeServerTestDelayMillis((String) pair.getFirst(), ((Number) pair.getSecond()).longValue());
            this.this$0.getUpdateListAction().setValue(Integer.valueOf(this.this$0.getPosition((String) pair.getFirst())));
        }
    }
}

package com.v2ray.ang.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Icon;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;
import com.v2ray.ang.util.MessageUtil;
import com.v2ray.ang.util.Utils;
import java.lang.ref.SoftReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(24)
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u0005H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/v2ray/ang/service/QSTileService;", "Landroid/service/quicksettings/TileService;", "<init>", "()V", "setState", "", "state", "", "onStartListening", "onStopListening", "onClick", "mMsgReceive", "Landroid/content/BroadcastReceiver;", "ReceiveMessageHandler", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class QSTileService extends TileService {

    @Nullable
    private BroadcastReceiver mMsgReceive;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;", "Landroid/content/BroadcastReceiver;", "context", "Lcom/v2ray/ang/service/QSTileService;", "<init>", "(Lcom/v2ray/ang/service/QSTileService;)V", "mReference", "Ljava/lang/ref/SoftReference;", "getMReference", "()Ljava/lang/ref/SoftReference;", "setMReference", "(Ljava/lang/ref/SoftReference;)V", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ReceiveMessageHandler extends BroadcastReceiver {

        @NotNull
        private SoftReference<QSTileService> mReference;

        public ReceiveMessageHandler(@NotNull QSTileService qSTileService) {
            Intrinsics.checkNotNullParameter(qSTileService, new ObfuscatedString(new long[]{-8151871545559395609L, 7372087286979357609L}).toString());
            this.mReference = new SoftReference<>(qSTileService);
        }

        @NotNull
        public final SoftReference<QSTileService> getMReference() {
            return this.mReference;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@Nullable Context ctx, @Nullable Intent intent) {
            Integer num;
            QSTileService qSTileService = this.mReference.get();
            if (intent != null) {
                num = Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{3456853808182657986L, -1070086393123700364L}).toString(), 0));
            } else {
                num = null;
            }
            if (num != null && num.intValue() == 11) {
                if (qSTileService != null) {
                    qSTileService.setState(2);
                    return;
                }
                return;
            }
            if (num != null && num.intValue() == 12) {
                if (qSTileService != null) {
                    qSTileService.setState(1);
                    return;
                }
                return;
            }
            if (num != null && num.intValue() == 31) {
                if (qSTileService != null) {
                    qSTileService.setState(2);
                }
            } else if (num != null && num.intValue() == 32) {
                if (qSTileService != null) {
                    qSTileService.setState(1);
                }
            } else if (num != null && num.intValue() == 41 && qSTileService != null) {
                qSTileService.setState(1);
            }
        }

        public final void setMReference(@NotNull SoftReference<QSTileService> softReference) {
            Intrinsics.checkNotNullParameter(softReference, new ObfuscatedString(new long[]{-8428521085954071759L, 7064939438990216483L}).toString());
            this.mReference = softReference;
        }
    }

    @Override // android.service.quicksettings.TileService
    public void onClick() {
        super.onClick();
        int state = getQsTile().getState();
        if (state != 1) {
            if (state == 2) {
                V2RayServiceManager.stopVService(this);
                return;
            }
            return;
        }
        V2RayServiceManager.INSTANCE.startVServiceFromToggle(this);
    }

    @Override // android.service.quicksettings.TileService
    public void onStartListening() {
        super.onStartListening();
        if (V2RayServiceManager.INSTANCE.isRunning()) {
            setState(2);
        } else {
            setState(1);
        }
        this.mMsgReceive = new ReceiveMessageHandler(this);
        ContextCompat.registerReceiver(getApplicationContext(), this.mMsgReceive, new IntentFilter(new ObfuscatedString(new long[]{358135689531456507L, 6150363714337850496L, -5185616039377682401L, -3121334053177684475L, 4755255242192413067L}).toString()), Utils.INSTANCE.receiverFlags());
        MessageUtil.INSTANCE.sendMsg2Service(this, 1, new ObfuscatedString(new long[]{-539898070783199466L}).toString());
    }

    @Override // android.service.quicksettings.TileService
    public void onStopListening() {
        super.onStopListening();
        try {
            getApplicationContext().unregisterReceiver(this.mMsgReceive);
            this.mMsgReceive = null;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-3502695903482225345L, -7005499533146754217L, -4313917057412312579L}).toString();
            new ObfuscatedString(new long[]{-2687221478201501537L, 7112795368879408654L, 8483727253263257744L, -7770418025134522559L, -1431186413956005043L}).toString();
        }
    }

    public final void setState(int state) {
        Tile qsTile;
        Tile qsTile2;
        Tile qsTile3;
        Tile qsTile4;
        Tile qsTile5;
        Tile qsTile6;
        Icon createWithResource;
        qsTile = getQsTile();
        if (qsTile != null) {
            createWithResource = Icon.createWithResource(getApplicationContext(), R.drawable.ic_stat_name);
            qsTile.setIcon(createWithResource);
        }
        if (state == 1) {
            qsTile2 = getQsTile();
            if (qsTile2 != null) {
                qsTile2.setState(1);
            }
            qsTile3 = getQsTile();
            if (qsTile3 != null) {
                qsTile3.setLabel(getString(com.fbd.tunnel.R.string.app_name));
            }
        } else if (state == 2) {
            qsTile5 = getQsTile();
            if (qsTile5 != null) {
                qsTile5.setState(2);
            }
            qsTile6 = getQsTile();
            if (qsTile6 != null) {
                qsTile6.setLabel(V2RayServiceManager.INSTANCE.getRunningServerName());
            }
        }
        qsTile4 = getQsTile();
        if (qsTile4 != null) {
            qsTile4.updateTile();
        }
    }
}

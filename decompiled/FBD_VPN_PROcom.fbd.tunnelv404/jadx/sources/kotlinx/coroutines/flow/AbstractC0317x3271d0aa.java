package kotlinx.coroutines.flow;

import defpackage.C1150x9aaf73e9;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* renamed from: kotlinx.coroutines.flow.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class AbstractC0317x3271d0aa {
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r3 == 0) goto L15;
     */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final C1150x9aaf73e9 m2332xfbe0c504(Flow flow, int i) {
        ChannelFlow channelFlow;
        Flow dropChannelOperators;
        int coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(i, Channel.INSTANCE.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()) - i;
        if ((flow instanceof ChannelFlow) && (dropChannelOperators = (channelFlow = (ChannelFlow) flow).dropChannelOperators()) != null) {
            int i2 = channelFlow.capacity;
            if (i2 != -3 && i2 != -2 && i2 != 0) {
                coerceAtLeast = i2;
            } else if (channelFlow.onBufferOverflow != BufferOverflow.SUSPEND) {
                if (i == 0) {
                    coerceAtLeast = 1;
                }
                coerceAtLeast = 0;
            }
            return new C1150x9aaf73e9(dropChannelOperators, channelFlow.context, coerceAtLeast, channelFlow.onBufferOverflow);
        }
        return new C1150x9aaf73e9(flow, EmptyCoroutineContext.INSTANCE, coerceAtLeast, BufferOverflow.SUSPEND);
    }
}

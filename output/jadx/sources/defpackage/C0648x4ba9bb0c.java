package defpackage;

import android.content.pm.ResolveInfo;
import androidx.savedstate.serialization.SavedStateConfig_androidKt;
import androidx.work.impl.utils.PreferenceUtils;
import com.v2ray.ang.fmt.FmtBase;
import com.v2ray.ang.plugin.PluginManager;
import io.github.g00fy2.quickie.QROverlayView;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.SerializerCache;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipEntry;

/* renamed from: 둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0648x4ba9bb0c implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4441xfbe0c504;

    public /* synthetic */ C0648x4ba9bb0c(int i) {
        this.f4441xfbe0c504 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        KSerializer nullable;
        PolymorphicSerializer polymorphicSerializer = null;
        boolean z = false;
        switch (this.f4441xfbe0c504) {
            case 0:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (!(element instanceof CoroutineDispatcher)) {
                    return null;
                }
                return (CoroutineDispatcher) element;
            case 1:
                DebugProbesImpl.INSTANCE.getClass();
                return Boolean.valueOf(!DebugProbesImpl.m2308x75d576dc((DebugProbesImpl.CoroutineOwner) obj));
            case 2:
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj;
                if (!(element2 instanceof ExecutorCoroutineDispatcher)) {
                    return null;
                }
                return (ExecutorCoroutineDispatcher) element2;
            case 3:
                return Boolean.TRUE;
            case 4:
                return FmtBase.m1703xfbe0c504((Pair) obj);
            case 5:
                if (((Character) obj).charValue() == '-') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 6:
                if (((Character) obj).charValue() == '-') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 7:
                char charValue = ((Character) obj).charValue();
                if (charValue == 'T' || charValue == 't') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 8:
                if (((Character) obj).charValue() == ':') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 9:
                if (((Character) obj).charValue() == ':') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 10:
                char charValue2 = ((Character) obj).charValue();
                if ('0' <= charValue2 && charValue2 < ':') {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 11:
                return PluginManager.m1720xfbe0c504((ResolveInfo) obj);
            case 12:
                return PreferenceUtils.m892xfbe0c504((Long) obj);
            case 13:
                ((Boolean) obj).booleanValue();
                QROverlayView.Companion companion = QROverlayView.INSTANCE;
                return Unit.INSTANCE;
            case 14:
                ((Boolean) obj).booleanValue();
                QROverlayView.Companion companion2 = QROverlayView.INSTANCE;
                return Unit.INSTANCE;
            case 15:
                ZipEntry entry = (ZipEntry) obj;
                Path path = ResourceFileSystem.f3687x75d576dc;
                Intrinsics.checkNotNullParameter(entry, "entry");
                return Boolean.valueOf(C1091x74b3e97d.m3795xfbe0c504(entry.getCanonicalPath()));
            case 16:
                return SavedStateConfig_androidKt.m813xfbe0c504((List) obj);
            case 17:
                Sequence it = (Sequence) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return it.iterator();
            case 18:
                Iterable it2 = (Iterable) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.iterator();
            case 19:
                return obj;
            case 20:
                IndexedValue it3 = (IndexedValue) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getValue();
            case 21:
                if (obj == null) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 22:
                Intrinsics.checkNotNullParameter((ClassSerialDescriptorBuilder) obj, "<this>");
                return Unit.INSTANCE;
            case 23:
                Intrinsics.checkNotNullParameter((ClassSerialDescriptorBuilder) obj, "<this>");
                return Unit.INSTANCE;
            case 24:
                KClass it4 = (KClass) obj;
                SerializerCache serializerCache = SerializersCacheKt.f2523xfbe0c504;
                Intrinsics.checkNotNullParameter(it4, "it");
                KSerializer serializerOrNull = SerializersKt.serializerOrNull(it4);
                if (serializerOrNull == null) {
                    if (PlatformKt.isInterface(it4)) {
                        polymorphicSerializer = new PolymorphicSerializer(it4);
                    }
                    return polymorphicSerializer;
                }
                return serializerOrNull;
            case 25:
                KClass it5 = (KClass) obj;
                SerializerCache serializerCache2 = SerializersCacheKt.f2523xfbe0c504;
                Intrinsics.checkNotNullParameter(it5, "it");
                KSerializer serializerOrNull2 = SerializersKt.serializerOrNull(it5);
                if (serializerOrNull2 == null) {
                    if (PlatformKt.isInterface(it5)) {
                        serializerOrNull2 = new PolymorphicSerializer(it5);
                    } else {
                        serializerOrNull2 = null;
                    }
                }
                if (serializerOrNull2 == null || (nullable = BuiltinSerializersKt.getNullable(serializerOrNull2)) == null) {
                    return null;
                }
                return nullable;
            case 26:
                String line = (String) obj;
                Intrinsics.checkNotNullParameter(line, "line");
                return line;
            case 27:
                CharSequence it6 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it6, "it");
                return it6.toString();
            case 28:
                CharSequence it7 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it7, "it");
                return it7.toString();
            default:
                CharSequence it8 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it8, "it");
                return it8.toString();
        }
    }
}

package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.SavedStateHandlesProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.PreferenceUtils;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.content.BitmapsKt;
import coil3.content.IntPair;
import coil3.content.UtilsKt;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.DecodeResult;
import coil3.decode.DecodeUtils;
import coil3.decode.ExifData;
import coil3.decode.ExifUtils;
import coil3.decode.ExifUtilsKt;
import coil3.memory.MemoryCache;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import io.github.g00fy2.quickie.QRScannerActivity;
import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.ArrayIteratorsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.reflect.KType;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.AbstractLongTimeSource;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import okio.BufferedSource;
import okio.FileSystem;
import okio.ForwardingSource;
import okio.Okio;
import okio.Path;
import okio.Source;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;

/* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0350x95f25580 implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3743xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3744x3271d0aa;

    public /* synthetic */ C0350x95f25580(Object obj, int i) {
        this.f3743xfbe0c504 = i;
        this.f3744x3271d0aa = obj;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Source, okio.ForwardingSource, 돤뒋됫뒘땫뒐땰땰땟돝땲뎻땭뒤땫돝땻뎸딅딟땔돶듰듽뒼땄듰딝듰둣뎬됴딨뒛땐딹뒀땟딻듽땳땸딨도되땱디돷뒬듔두땅둬땄둬듰뎨뒵듐딟듔땧돠땲땳됫뒛듟땤돝들둘뒵돰딄돵뎡딀땜둠딨돤땣땯되땃땔딸딀땧된딹뒵딹돝둬듬뒾딁돴땔땰뎨들뒨땵듻뒼뒾딤딄돴돵땸돷뒙땅땍듸땻둔돸딟딟땰딄둔둔딨돝] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        int i;
        int i2;
        boolean z2;
        Bitmap.Config config2;
        Bitmap.Config config3;
        Bitmap.Config config4;
        String editGuid_delegate$lambda$4;
        int lastIndexOf$default;
        Pair pair;
        Pair pair2;
        Unit lambda$enqueue$0;
        Unit lambda$rescheduleEligibleWork$0;
        Object obj = this.f3744x3271d0aa;
        switch (this.f3743xfbe0c504) {
            case 0:
                return Long.valueOf(((AbstractLongTimeSource) obj).getF1719x1378447b());
            case 1:
                return ArrayIteratorsKt.iterator((double[]) obj);
            case 2:
                return ArrayIteratorsKt.iterator((char[]) obj);
            case 3:
                return ArrayIteratorsKt.iterator((float[]) obj);
            case 4:
                return ArrayIteratorsKt.iterator((boolean[]) obj);
            case 5:
                return ArrayIteratorKt.iterator((Object[]) obj);
            case 6:
                BitmapFactoryDecoder.Companion companion = BitmapFactoryDecoder.INSTANCE;
                BitmapFactory.Options options = new BitmapFactory.Options();
                BitmapFactoryDecoder bitmapFactoryDecoder = (BitmapFactoryDecoder) obj;
                ?? forwardingSource = new ForwardingSource(bitmapFactoryDecoder.f500xfbe0c504.source());
                BufferedSource buffer = Okio.buffer((Source) forwardingSource);
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(buffer.peek().inputStream(), null, options);
                Exception exc = forwardingSource.f3893x3271d0aa;
                if (exc == null) {
                    options.inJustDecodeBounds = false;
                    ExifUtils exifUtils = ExifUtils.INSTANCE;
                    ExifData exifData = exifUtils.getExifData(options.outMimeType, buffer, bitmapFactoryDecoder.f503x75d576dc);
                    Exception exc2 = forwardingSource.f3893x3271d0aa;
                    if (exc2 == null) {
                        options.inMutable = false;
                        int i3 = Build.VERSION.SDK_INT;
                        Options options2 = bitmapFactoryDecoder.f501x3271d0aa;
                        if (i3 >= 26 && ImageRequests_androidKt.getColorSpace(options2) != null) {
                            options.inPreferredColorSpace = ImageRequests_androidKt.getColorSpace(options2);
                        }
                        options.inPremultiplied = ImageRequests_androidKt.getPremultipliedAlpha(options2);
                        Bitmap.Config bitmapConfig = ImageRequests_androidKt.getBitmapConfig(options2);
                        if (exifData.getIsFlipped() || ExifUtilsKt.isRotated(exifData)) {
                            bitmapConfig = BitmapsKt.toSoftware(bitmapConfig);
                        }
                        if (ImageRequests_androidKt.getAllowRgb565(options2) && bitmapConfig == Bitmap.Config.ARGB_8888 && Intrinsics.areEqual(options.outMimeType, UtilsKt.MIME_TYPE_JPEG)) {
                            bitmapConfig = Bitmap.Config.RGB_565;
                        }
                        if (i3 >= 26) {
                            config2 = options.outConfig;
                            config3 = Bitmap.Config.RGBA_F16;
                            if (config2 == config3) {
                                config4 = Bitmap.Config.HARDWARE;
                                if (bitmapConfig != config4) {
                                    bitmapConfig = Bitmap.Config.RGBA_F16;
                                }
                            }
                        }
                        options.inPreferredConfig = bitmapConfig;
                        if (options.outWidth > 0 && options.outHeight > 0) {
                            if (ExifUtilsKt.isSwapped(exifData)) {
                                i = options.outHeight;
                            } else {
                                i = options.outWidth;
                            }
                            if (ExifUtilsKt.isSwapped(exifData)) {
                                i2 = options.outWidth;
                            } else {
                                i2 = options.outHeight;
                            }
                            long m929computeDstSizesEdh43o = DecodeUtils.m929computeDstSizesEdh43o(i, i2, options2.getSize(), options2.getScale(), ImageRequestsKt.getMaxBitmapSize(options2));
                            int m976getFirstimpl = IntPair.m976getFirstimpl(m929computeDstSizesEdh43o);
                            int m977getSecondimpl = IntPair.m977getSecondimpl(m929computeDstSizesEdh43o);
                            int calculateInSampleSize = DecodeUtils.calculateInSampleSize(i, i2, m976getFirstimpl, m977getSecondimpl, options2.getScale());
                            options.inSampleSize = calculateInSampleSize;
                            double d = calculateInSampleSize;
                            double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(i / d, i2 / d, m976getFirstimpl, m977getSecondimpl, options2.getScale());
                            if (options2.getPrecision() == Precision.INEXACT) {
                                computeSizeMultiplier = AbstractC0296x1378447b.coerceAtMost(computeSizeMultiplier, 1.0d);
                            }
                            if (computeSizeMultiplier == 1.0d) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            options.inScaled = !z2;
                            if (!z2) {
                                if (computeSizeMultiplier > 1.0d) {
                                    options.inDensity = AbstractC0975x7c3950e5.roundToInt(Integer.MAX_VALUE / computeSizeMultiplier);
                                    options.inTargetDensity = Integer.MAX_VALUE;
                                } else {
                                    options.inDensity = Integer.MAX_VALUE;
                                    options.inTargetDensity = AbstractC0975x7c3950e5.roundToInt(Integer.MAX_VALUE * computeSizeMultiplier);
                                }
                            }
                            z = false;
                        } else {
                            options.inSampleSize = 1;
                            z = false;
                            options.inScaled = false;
                        }
                        try {
                            Bitmap decodeStream = BitmapFactory.decodeStream(buffer.inputStream(), null, options);
                            CloseableKt.closeFinally(buffer, null);
                            Exception exc3 = forwardingSource.f3893x3271d0aa;
                            if (exc3 == null) {
                                if (decodeStream != null) {
                                    decodeStream.setDensity(options2.getContext().getResources().getDisplayMetrics().densityDpi);
                                    Image asImage = Image_androidKt.asImage(new BitmapDrawable(options2.getContext().getResources(), exifUtils.reverseTransformations(decodeStream, exifData)));
                                    if (options.inSampleSize > 1 || options.inScaled) {
                                        z = true;
                                    }
                                    return new DecodeResult(asImage, z);
                                }
                                throw new IllegalStateException("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                            }
                            throw exc3;
                        } finally {
                        }
                    } else {
                        throw exc2;
                    }
                } else {
                    throw exc;
                }
            case 7:
                return ((Iterable) obj).iterator();
            case 8:
                return CoroutineLiveData.m626xfbe0c504((CoroutineLiveData) obj);
            case 9:
                return MemoryCache.Builder.maxSizePercent$default(new MemoryCache.Builder(), ((ImageLoader.Builder) obj).f462xfbe0c504, 0.0d, 2, null).build();
            case 10:
                editGuid_delegate$lambda$4 = MainBaseActivity.editGuid_delegate$lambda$4((MainBaseActivity) obj);
                return editGuid_delegate$lambda$4;
            case 11:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj;
                return ContextAwareKt.withContext(SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind.OPEN.INSTANCE, new SerialDescriptor[0], new C0346x75d576dc(polymorphicSerializer, 12)), polymorphicSerializer.getBaseClass());
            case 12:
                QRScannerActivity.Companion companion2 = QRScannerActivity.INSTANCE;
                ((QRScannerActivity) obj).finish();
                return Unit.INSTANCE;
            case 13:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj;
                ClassLoader classLoader = resourceFileSystem.f3688xfbe0c504;
                Enumeration<URL> resources = classLoader.getResources("");
                Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
                ArrayList list = Collections.list(resources);
                Intrinsics.checkNotNullExpressionValue(list, "list(...)");
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    FileSystem fileSystem = resourceFileSystem.f3689x3271d0aa;
                    if (hasNext) {
                        URL url = (URL) it.next();
                        Intrinsics.checkNotNull(url);
                        if (!Intrinsics.areEqual(url.getProtocol(), UtilsKt.SCHEME_FILE)) {
                            pair2 = null;
                        } else {
                            pair2 = TuplesKt.to(fileSystem, Path.Companion.get$default(Path.INSTANCE, new File(url.toURI()), false, 1, (Object) null));
                        }
                        if (pair2 != null) {
                            arrayList.add(pair2);
                        }
                    } else {
                        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                        Intrinsics.checkNotNullExpressionValue(resources2, "getResources(...)");
                        ArrayList<URL> list2 = Collections.list(resources2);
                        Intrinsics.checkNotNullExpressionValue(list2, "list(...)");
                        ArrayList arrayList2 = new ArrayList();
                        for (URL url2 : list2) {
                            Intrinsics.checkNotNull(url2);
                            String url3 = url2.toString();
                            Intrinsics.checkNotNullExpressionValue(url3, "toString(...)");
                            if (!AbstractC1197x89633db9.startsWith$default(url3, "jar:file:", false, 2, null) || (lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) url3, "!", 0, false, 6, (Object) null)) == -1) {
                                pair = null;
                            } else {
                                Path.Companion companion3 = Path.INSTANCE;
                                String substring = url3.substring(4, lastIndexOf$default);
                                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                                pair = TuplesKt.to(ZipFilesKt.openZip(Path.Companion.get$default(companion3, new File(URI.create(substring)), false, 1, (Object) null), fileSystem, new C0648x4ba9bb0c(15)), ResourceFileSystem.f3687x75d576dc);
                            }
                            if (pair != null) {
                                arrayList2.add(pair);
                            }
                        }
                        return CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
                    }
                }
                break;
            case 14:
                return SavedStateHandlesProvider.m635xfbe0c504((ViewModelStoreOwner) obj);
            case 15:
                return SavedStateRegistryController.Companion.m768xfbe0c504((SavedStateRegistryOwner) obj);
            case 16:
                return obj;
            case 17:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                return Integer.valueOf(PluginGeneratedSerialDescriptorKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.f2546x1db10c9d));
            case 18:
                return ((KType) ((ArrayList) obj).get(0)).getClassifier();
            case 19:
                return StringsKt__StringsKt.iterator((CharSequence) obj);
            case 20:
                lambda$enqueue$0 = ((WorkContinuationImpl) obj).lambda$enqueue$0();
                return lambda$enqueue$0;
            case 21:
                return Long.valueOf(((PreferenceUtils) obj).getLastCancelAllTimeMillis());
            default:
                lambda$rescheduleEligibleWork$0 = ((WorkManagerImpl) obj).lambda$rescheduleEligibleWork$0();
                return lambda$rescheduleEligibleWork$0;
        }
    }
}

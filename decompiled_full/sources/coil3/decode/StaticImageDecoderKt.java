package coil3.decode;

import android.content.res.AssetFileDescriptor;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.RequiresApi;
import coil3.annotation.InternalCoilApi;
import coil3.decode.ImageSource;
import coil3.request.Options;
import defpackage.CallableC0482xf90b3f31;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"toImageDecoderSourceOrNull", "Landroid/graphics/ImageDecoder$Source;", "Lcoil3/decode/ImageSource;", "options", "Lcoil3/request/Options;", "animated", "", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StaticImageDecoderKt {
    @RequiresApi(28)
    @InternalCoilApi
    @Nullable
    public static final ImageDecoder.Source toImageDecoderSourceOrNull(@NotNull ImageSource imageSource, @NotNull Options options, boolean z) {
        ImageDecoder.Source createSource;
        ImageDecoder.Source createSource2;
        ImageDecoder.Source createSource3;
        ImageDecoder.Source createSource4;
        Path fileOrNull;
        ImageDecoder.Source createSource5;
        if (imageSource.getFileSystem() == FileSystem.SYSTEM && (fileOrNull = imageSource.fileOrNull()) != null) {
            createSource5 = ImageDecoder.createSource(fileOrNull.toFile());
            return createSource5;
        }
        ImageSource.Metadata metadata = imageSource.getMetadata();
        if (metadata instanceof AssetMetadata) {
            createSource4 = ImageDecoder.createSource(options.getContext().getAssets(), ((AssetMetadata) metadata).getFilePath());
            return createSource4;
        }
        if ((metadata instanceof ContentMetadata) && Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) metadata).getAssetFileDescriptor();
                Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                createSource3 = ImageDecoder.createSource(new CallableC0482xf90b3f31(assetFileDescriptor, 2));
                return createSource3;
            } catch (ErrnoException unused) {
                return null;
            }
        }
        if (metadata instanceof ResourceMetadata) {
            ResourceMetadata resourceMetadata = (ResourceMetadata) metadata;
            if (Intrinsics.areEqual(resourceMetadata.getPackageName(), options.getContext().getPackageName())) {
                createSource2 = ImageDecoder.createSource(options.getContext().getResources(), resourceMetadata.getResId());
                return createSource2;
            }
        }
        if (metadata instanceof ByteBufferMetadata) {
            if (Build.VERSION.SDK_INT >= 30 || !z || ((ByteBufferMetadata) metadata).getByteBuffer().isDirect()) {
                createSource = ImageDecoder.createSource(((ByteBufferMetadata) metadata).getByteBuffer());
                return createSource;
            }
            return null;
        }
        return null;
    }
}

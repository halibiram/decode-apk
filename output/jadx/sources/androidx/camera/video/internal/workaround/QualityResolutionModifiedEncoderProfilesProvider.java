package androidx.camera.video.internal.workaround;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.video.internal.compat.quirk.StretchedVideoResolutionQuirk;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class QualityResolutionModifiedEncoderProfilesProvider implements EncoderProfilesProvider {

    @NonNull
    private final Map<Integer, EncoderProfilesProxy> mEncoderProfilesCache = new HashMap();

    @NonNull
    private final EncoderProfilesProvider mProvider;

    @NonNull
    private final Quirks mQuirks;

    public QualityResolutionModifiedEncoderProfilesProvider(@NonNull EncoderProfilesProvider encoderProfilesProvider, @NonNull Quirks quirks) {
        this.mProvider = encoderProfilesProvider;
        this.mQuirks = quirks;
    }

    @Nullable
    private EncoderProfilesProxy createNewEncoderProfiles(@NonNull EncoderProfilesProxy encoderProfilesProxy, @NonNull Size size) {
        ArrayList arrayList = new ArrayList();
        Iterator<EncoderProfilesProxy.VideoProfileProxy> it = encoderProfilesProxy.getVideoProfiles().iterator();
        while (it.hasNext()) {
            arrayList.add(generateVideoProfile(it.next(), size));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(encoderProfilesProxy.getDefaultDurationSeconds(), encoderProfilesProxy.getRecommendedFileFormat(), encoderProfilesProxy.getAudioProfiles(), arrayList);
    }

    @NonNull
    private static EncoderProfilesProxy.VideoProfileProxy generateVideoProfile(@NonNull EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, @NonNull Size size) {
        return EncoderProfilesProxy.VideoProfileProxy.create(videoProfileProxy.getCodec(), videoProfileProxy.getMediaType(), videoProfileProxy.getBitrate(), videoProfileProxy.getFrameRate(), size.getWidth(), size.getHeight(), videoProfileProxy.getProfile(), videoProfileProxy.getBitDepth(), videoProfileProxy.getChromaSubsampling(), videoProfileProxy.getHdrFormat());
    }

    @Nullable
    private Size getAlternativeResolution(int i) {
        for (StretchedVideoResolutionQuirk stretchedVideoResolutionQuirk : this.mQuirks.getAll(StretchedVideoResolutionQuirk.class)) {
            if (stretchedVideoResolutionQuirk != null) {
                return stretchedVideoResolutionQuirk.getAlternativeResolution(i);
            }
        }
        return null;
    }

    @Nullable
    private EncoderProfilesProxy getProfilesInternal(int i) {
        EncoderProfilesProxy encoderProfilesProxy;
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        if (this.mProvider.hasProfile(i)) {
            EncoderProfilesProxy all = this.mProvider.getAll(i);
            Objects.requireNonNull(all);
            encoderProfilesProxy = all;
            Size alternativeResolution = getAlternativeResolution(i);
            if (alternativeResolution != null) {
                encoderProfilesProxy = createNewEncoderProfiles(encoderProfilesProxy, alternativeResolution);
            }
        } else {
            encoderProfilesProxy = null;
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(i), encoderProfilesProxy);
        return encoderProfilesProxy;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    @Nullable
    public EncoderProfilesProxy getAll(int i) {
        return getProfilesInternal(i);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        if (!this.mProvider.hasProfile(i) || getProfilesInternal(i) == null) {
            return false;
        }
        return true;
    }
}

package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.config.AudioConfigUtil;
import androidx.camera.video.internal.config.AudioMimeInfo;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.core.util.Supplier;
import defpackage.AbstractC0362x4440ab85;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class AudioConfigUtil {
    static final int AUDIO_CHANNEL_COUNT_DEFAULT = 1;
    static final int AUDIO_SAMPLE_RATE_DEFAULT = 44100;
    static final int AUDIO_SOURCE_DEFAULT = 5;
    static final int AUDIO_SOURCE_FORMAT_DEFAULT = 2;
    private static final String TAG = "AudioConfigUtil";

    private AudioConfigUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$selectSampleRateOrNearestSupported$0(int i, Integer num, Integer num2) {
        float signum;
        int abs = Math.abs(num.intValue() - i) - Math.abs(num2.intValue() - i);
        if (abs == 0) {
            signum = Math.signum(num.intValue() - num2.intValue());
        } else {
            signum = Math.signum(abs);
        }
        return (int) signum;
    }

    @NonNull
    public static AudioEncoderConfig resolveAudioEncoderConfig(@NonNull AudioMimeInfo audioMimeInfo, @NonNull Timebase timebase, @NonNull AudioSettings audioSettings, @NonNull AudioSpec audioSpec) {
        Supplier audioEncoderConfigDefaultResolver;
        EncoderProfilesProxy.AudioProfileProxy compatibleAudioProfile = audioMimeInfo.getCompatibleAudioProfile();
        if (compatibleAudioProfile != null) {
            audioEncoderConfigDefaultResolver = new AudioEncoderConfigAudioProfileResolver(audioMimeInfo.getMimeType(), audioMimeInfo.getProfile(), timebase, audioSpec, audioSettings, compatibleAudioProfile);
        } else {
            audioEncoderConfigDefaultResolver = new AudioEncoderConfigDefaultResolver(audioMimeInfo.getMimeType(), audioMimeInfo.getProfile(), timebase, audioSpec, audioSettings);
        }
        return (AudioEncoderConfig) audioEncoderConfigDefaultResolver.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00cb  */
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AudioMimeInfo resolveAudioMimeInfo(@NonNull MediaSpec mediaSpec, @Nullable VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy;
        String outputFormatToAudioMime = MediaSpec.outputFormatToAudioMime(mediaSpec.getOutputFormat());
        int outputFormatToAudioProfile = MediaSpec.outputFormatToAudioProfile(mediaSpec.getOutputFormat());
        if (videoValidatedEncoderProfilesProxy != null && videoValidatedEncoderProfilesProxy.getDefaultAudioProfile() != null) {
            audioProfileProxy = videoValidatedEncoderProfilesProxy.getDefaultAudioProfile();
            String mediaType = audioProfileProxy.getMediaType();
            int profile = audioProfileProxy.getProfile();
            if (Objects.equals(mediaType, EncoderProfilesProxy.AudioProfileProxy.MEDIA_TYPE_NONE)) {
                Logger.d(TAG, "EncoderProfiles contains undefined AUDIO mime type so cannot be used. May rely on fallback defaults to derive settings [chosen mime type: " + outputFormatToAudioMime + "(profile: " + outputFormatToAudioProfile + ")]");
            } else {
                if (mediaSpec.getOutputFormat() == -1) {
                    Logger.d(TAG, "MediaSpec contains OUTPUT_FORMAT_AUTO. Using EncoderProfiles to derive AUDIO settings [mime type: " + mediaType + "(profile: " + profile + ")]");
                    outputFormatToAudioMime = mediaType;
                    outputFormatToAudioProfile = profile;
                } else if (Objects.equals(outputFormatToAudioMime, mediaType) && outputFormatToAudioProfile == profile) {
                    Logger.d(TAG, "MediaSpec audio mime/profile matches EncoderProfiles. Using EncoderProfiles to derive AUDIO settings [mime type: " + mediaType + "(profile: " + outputFormatToAudioProfile + ")]");
                    outputFormatToAudioMime = mediaType;
                } else {
                    Logger.d(TAG, "MediaSpec audio mime or profile does not match EncoderProfiles, so EncoderProfiles settings cannot be used. May rely on fallback defaults to derive AUDIO settings [EncoderProfiles mime type: " + mediaType + "(profile: " + profile + "), chosen mime type: " + outputFormatToAudioMime + "(profile: " + outputFormatToAudioProfile + ")]");
                }
                AudioMimeInfo.Builder profile2 = AudioMimeInfo.builder(outputFormatToAudioMime).setProfile(outputFormatToAudioProfile);
                if (audioProfileProxy != null) {
                    profile2.setCompatibleAudioProfile(audioProfileProxy);
                }
                return profile2.build();
            }
        }
        audioProfileProxy = null;
        AudioMimeInfo.Builder profile22 = AudioMimeInfo.builder(outputFormatToAudioMime).setProfile(outputFormatToAudioProfile);
        if (audioProfileProxy != null) {
        }
        return profile22.build();
    }

    @NonNull
    public static AudioSettings resolveAudioSettings(@NonNull AudioMimeInfo audioMimeInfo, @NonNull AudioSpec audioSpec) {
        Supplier audioSettingsDefaultResolver;
        EncoderProfilesProxy.AudioProfileProxy compatibleAudioProfile = audioMimeInfo.getCompatibleAudioProfile();
        if (compatibleAudioProfile != null) {
            audioSettingsDefaultResolver = new AudioSettingsAudioProfileResolver(audioSpec, compatibleAudioProfile);
        } else {
            audioSettingsDefaultResolver = new AudioSettingsDefaultResolver(audioSpec);
        }
        return (AudioSettings) audioSettingsDefaultResolver.get();
    }

    public static int resolveAudioSource(@NonNull AudioSpec audioSpec) {
        int source = audioSpec.getSource();
        if (source == -1) {
            Logger.d(TAG, "Using default AUDIO source: 5");
            return 5;
        }
        Logger.d(TAG, "Using provided AUDIO source: " + source);
        return source;
    }

    public static int resolveAudioSourceFormat(@NonNull AudioSpec audioSpec) {
        int sourceFormat = audioSpec.getSourceFormat();
        if (sourceFormat == -1) {
            Logger.d(TAG, "Using default AUDIO source format: 2");
            return 2;
        }
        Logger.d(TAG, "Using provided AUDIO source format: " + sourceFormat);
        return sourceFormat;
    }

    public static int scaleAndClampBitrate(int i, int i2, int i3, int i4, int i5, Range<Integer> range) {
        String str;
        int doubleValue = (int) (new Rational(i4, i5).doubleValue() * new Rational(i2, i3).doubleValue() * i);
        if (Logger.isDebugEnabled(TAG)) {
            str = String.format("Base Bitrate(%dbps) * Channel Count Ratio(%d / %d) * Sample Rate Ratio(%d / %d) = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(doubleValue));
        } else {
            str = "";
        }
        if (!AudioSpec.BITRATE_RANGE_AUTO.equals(range)) {
            Integer clamp = range.clamp(Integer.valueOf(doubleValue));
            doubleValue = clamp.intValue();
            if (Logger.isDebugEnabled(TAG)) {
                str = str.concat(String.format("\nClamped to range %s -> %dbps", range, clamp));
            }
        }
        Logger.d(TAG, str);
        return doubleValue;
    }

    public static int selectSampleRateOrNearestSupported(@NonNull Range<Integer> range, int i, int i2, final int i3) {
        ArrayList arrayList = null;
        int i4 = 0;
        int i5 = i3;
        while (true) {
            if (range.contains((Range<Integer>) Integer.valueOf(i5))) {
                if (AudioSource.isSettingsSupported(i5, i, i2)) {
                    return i5;
                }
                StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i5, i, "Sample rate ", "Hz is not supported by audio source with channel count ", " and source format ");
                m2937x8c6fc18a.append(i2);
                Logger.d(TAG, m2937x8c6fc18a.toString());
            } else {
                Logger.d(TAG, "Sample rate " + i5 + "Hz is not in target range " + range);
            }
            if (arrayList == null) {
                Logger.d(TAG, "Trying common sample rates in proximity order to target " + i3 + "Hz");
                arrayList = new ArrayList(AudioSettings.COMMON_SAMPLE_RATES);
                Collections.sort(arrayList, new Comparator() { // from class: 돛땝돸땁땦딠듐됐뒛됫땳땥둔뒷둔땫돼뎻따됫됐뒐땃뎸딽땪뎸뎹돨돴땜땋땰듐돝된땭땰땥뎹드돝뎻땍뒉둑듬둔땮돸뎡딃딄뒹돶뒘뎰듰되뒹듐따둥땸뎸뎽딨듟딠듟되뎰둣땧딅땄땫뒤뎸득뒵딸뒛뒼뎠딞둔땲땄뒐땬둠뒉돸됨땨딐듼딁뎡들됫땠둑땀득둘땲돛딤돸땫듌땲딎따둬됐됫땔뎠뒾둔딀딝돷뎡듐돳땄
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$selectSampleRateOrNearestSupported$0;
                        lambda$selectSampleRateOrNearestSupported$0 = AudioConfigUtil.lambda$selectSampleRateOrNearestSupported$0(i3, (Integer) obj, (Integer) obj2);
                        return lambda$selectSampleRateOrNearestSupported$0;
                    }
                });
            }
            if (i4 < arrayList.size()) {
                i5 = ((Integer) arrayList.get(i4)).intValue();
                i4++;
            } else {
                Logger.d(TAG, "No sample rate found in target range or supported by audio source. Falling back to default sample rate of 44100Hz");
                return AUDIO_SAMPLE_RATE_DEFAULT;
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.PointerIconCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1321x18c67f64;
import defpackage.AbstractC1325xa03074bf;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@RequiresApi(31)
/* loaded from: classes2.dex */
public final class zzox implements zzms, zzoy {
    private final Context zza;
    private final zzoz zzb;
    private final PlaybackSession zzc;

    @Nullable
    private String zzi;

    @Nullable
    private PlaybackMetrics.Builder zzj;
    private int zzk;

    @Nullable
    private zzce zzn;

    @Nullable
    private zzow zzo;

    @Nullable
    private zzow zzp;

    @Nullable
    private zzow zzq;

    @Nullable
    private zzam zzr;

    @Nullable
    private zzam zzs;

    @Nullable
    private zzam zzt;
    private boolean zzu;
    private boolean zzv;
    private int zzw;
    private int zzx;
    private int zzy;
    private boolean zzz;
    private final zzcw zze = new zzcw();
    private final zzcu zzf = new zzcu();
    private final HashMap zzh = new HashMap();
    private final HashMap zzg = new HashMap();
    private final long zzd = SystemClock.elapsedRealtime();
    private int zzl = 0;
    private int zzm = 0;

    private zzox(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzc = playbackSession;
        zzov zzovVar = new zzov(zzov.zza);
        this.zzb = zzovVar;
        zzovVar.zzh(this);
    }

    @Nullable
    public static zzox zzb(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager m4390x3271d0aa = AbstractC1325xa03074bf.m4390x3271d0aa(context.getSystemService(new ObfuscatedString(new long[]{-2422914990218714408L, 3186071099654150751L, -5491138254522387957L}).toString()));
        if (m4390x3271d0aa != null) {
            createPlaybackSession = m4390x3271d0aa.createPlaybackSession();
            return new zzox(context, createPlaybackSession);
        }
        return null;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int zzr(int i) {
        switch (zzfy.zzi(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzs() {
        long longValue;
        long longValue2;
        int i;
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.zzj;
        if (builder != null && this.zzz) {
            builder.setAudioUnderrunCount(this.zzy);
            this.zzj.setVideoFramesDropped(this.zzw);
            this.zzj.setVideoFramesPlayed(this.zzx);
            Long l = (Long) this.zzg.get(this.zzi);
            PlaybackMetrics.Builder builder2 = this.zzj;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l2 = (Long) this.zzh.get(this.zzi);
            PlaybackMetrics.Builder builder3 = this.zzj;
            if (l2 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l2.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.zzj;
            if (l2 != null && l2.longValue() > 0) {
                i = 1;
            } else {
                i = 0;
            }
            builder4.setStreamSource(i);
            PlaybackSession playbackSession = this.zzc;
            build = this.zzj.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.zzj = null;
        this.zzi = null;
        this.zzy = 0;
        this.zzw = 0;
        this.zzx = 0;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzz = false;
    }

    private final void zzt(long j, @Nullable zzam zzamVar, int i) {
        int i2;
        if (zzfy.zzF(this.zzs, zzamVar)) {
            return;
        }
        if (this.zzs == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        this.zzs = zzamVar;
        zzx(0, j, zzamVar, i2);
    }

    private final void zzu(long j, @Nullable zzam zzamVar, int i) {
        int i2;
        if (zzfy.zzF(this.zzt, zzamVar)) {
            return;
        }
        if (this.zzt == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        this.zzt = zzamVar;
        zzx(2, j, zzamVar, i2);
    }

    @RequiresNonNull({"metricsBuilder"})
    private final void zzv(zzcx zzcxVar, @Nullable zzur zzurVar) {
        int zza;
        PlaybackMetrics.Builder builder = this.zzj;
        if (zzurVar != null && (zza = zzcxVar.zza(zzurVar.zza)) != -1) {
            int i = 0;
            zzcxVar.zzd(zza, this.zzf, false);
            zzcxVar.zze(this.zzf.zzd, this.zze, 0L);
            zzbi zzbiVar = this.zze.zze.zzd;
            int i2 = 2;
            if (zzbiVar != null) {
                int zzm = zzfy.zzm(zzbiVar.zzb);
                if (zzm != 0) {
                    if (zzm != 1) {
                        if (zzm != 2) {
                            i = 1;
                        } else {
                            i = 4;
                        }
                    } else {
                        i = 5;
                    }
                } else {
                    i = 3;
                }
            }
            builder.setStreamType(i);
            zzcw zzcwVar = this.zze;
            if (zzcwVar.zzo != -9223372036854775807L && !zzcwVar.zzm && !zzcwVar.zzj && !zzcwVar.zzb()) {
                builder.setMediaDurationMillis(zzfy.zzt(this.zze.zzo));
            }
            if (true != this.zze.zzb()) {
                i2 = 1;
            }
            builder.setPlaybackType(i2);
            this.zzz = true;
        }
    }

    private final void zzw(long j, @Nullable zzam zzamVar, int i) {
        int i2;
        if (zzfy.zzF(this.zzr, zzamVar)) {
            return;
        }
        if (this.zzr == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        this.zzr = zzamVar;
        zzx(1, j, zzamVar, i2);
    }

    private final void zzx(int i, long j, @Nullable zzam zzamVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        int i3;
        String str;
        timeSinceCreatedMillis = AbstractC1325xa03074bf.m4396x95f25580(i).setTimeSinceCreatedMillis(j - this.zzd);
        if (zzamVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str2 = zzamVar.zzl;
            if (str2 != null) {
                timeSinceCreatedMillis.setContainerMimeType(str2);
            }
            String str3 = zzamVar.zzm;
            if (str3 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str3);
            }
            String str4 = zzamVar.zzj;
            if (str4 != null) {
                timeSinceCreatedMillis.setCodecName(str4);
            }
            int i4 = zzamVar.zzi;
            if (i4 != -1) {
                timeSinceCreatedMillis.setBitrate(i4);
            }
            int i5 = zzamVar.zzr;
            if (i5 != -1) {
                timeSinceCreatedMillis.setWidth(i5);
            }
            int i6 = zzamVar.zzs;
            if (i6 != -1) {
                timeSinceCreatedMillis.setHeight(i6);
            }
            int i7 = zzamVar.zzz;
            if (i7 != -1) {
                timeSinceCreatedMillis.setChannelCount(i7);
            }
            int i8 = zzamVar.zzA;
            if (i8 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i8);
            }
            String str5 = zzamVar.zzd;
            if (str5 != null) {
                int i9 = zzfy.zza;
                String[] split = str5.split(new ObfuscatedString(new long[]{4409915676840207759L, 8257059374140938221L}).toString(), -1);
                String str6 = split[0];
                if (split.length >= 2) {
                    str = split[1];
                } else {
                    str = null;
                }
                Pair create = Pair.create(str6, str);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = zzamVar.zzt;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzz = true;
        PlaybackSession playbackSession = this.zzc;
        build = timeSinceCreatedMillis.build();
        playbackSession.reportTrackChangeEvent(build);
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    private final boolean zzy(@Nullable zzow zzowVar) {
        if (zzowVar != null) {
            if (zzowVar.zzc.equals(this.zzb.zze())) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final LogSessionId zza() {
        LogSessionId sessionId;
        sessionId = this.zzc.getSessionId();
        return sessionId;
    }

    @Override // com.google.android.gms.internal.ads.zzoy
    public final void zzc(zzmq zzmqVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        zzur zzurVar = zzmqVar.zzd;
        if (zzurVar != null && zzurVar.zzb()) {
            return;
        }
        zzs();
        this.zzi = str;
        playerName = AbstractC1325xa03074bf.m4393x9738a56c().setPlayerName(new ObfuscatedString(new long[]{-6200836197506251550L, 3162820360315799429L, 288684353272354L}).toString());
        playerVersion = playerName.setPlayerVersion(new ObfuscatedString(new long[]{-8879129682829405281L, 6328901777958550561L}).toString());
        this.zzj = playerVersion;
        zzv(zzmqVar.zzb, zzmqVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzoy
    public final void zzd(zzmq zzmqVar, String str, boolean z) {
        zzur zzurVar = zzmqVar.zzd;
        if ((zzurVar == null || !zzurVar.zzb()) && str.equals(this.zzi)) {
            zzs();
        }
        this.zzg.remove(str);
        this.zzh.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zze(zzmq zzmqVar, zzam zzamVar, zzis zzisVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzf(zzmq zzmqVar, int i, long j, long j2) {
        long longValue;
        zzur zzurVar = zzmqVar.zzd;
        if (zzurVar != null) {
            zzoz zzozVar = this.zzb;
            zzcx zzcxVar = zzmqVar.zzb;
            HashMap hashMap = this.zzh;
            String zzf = zzozVar.zzf(zzcxVar, zzurVar);
            Long l = (Long) hashMap.get(zzf);
            Long l2 = (Long) this.zzg.get(zzf);
            HashMap hashMap2 = this.zzh;
            long j3 = 0;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            hashMap2.put(zzf, Long.valueOf(longValue + j));
            HashMap hashMap3 = this.zzg;
            if (l2 != null) {
                j3 = l2.longValue();
            }
            hashMap3.put(zzf, Long.valueOf(j3 + i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzg(zzmq zzmqVar, zzun zzunVar) {
        zzur zzurVar = zzmqVar.zzd;
        if (zzurVar != null) {
            zzam zzamVar = zzunVar.zzb;
            zzamVar.getClass();
            zzow zzowVar = new zzow(zzamVar, 0, this.zzb.zzf(zzmqVar.zzb, zzurVar));
            int i = zzunVar.zza;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        this.zzq = zzowVar;
                        return;
                    }
                } else {
                    this.zzp = zzowVar;
                    return;
                }
            }
            this.zzo = zzowVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzh(zzmq zzmqVar, int i, long j) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x01e7, code lost:
    
        if (r9 != 1) goto L139;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzms
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(zzco zzcoVar, zzmr zzmrVar) {
        int i;
        int i2;
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis;
        PlaybackStateEvent build;
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis2;
        NetworkEvent build2;
        boolean z;
        int i3;
        int errorCode;
        int zzr;
        int i4;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis3;
        PlaybackErrorEvent.Builder errorCode2;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build3;
        zzae zzaeVar;
        int i5;
        int i6;
        if (zzmrVar.zzb() != 0) {
            for (int i7 = 0; i7 < zzmrVar.zzb(); i7++) {
                int zza = zzmrVar.zza(i7);
                zzmq zzc = zzmrVar.zzc(zza);
                if (zza == 0) {
                    this.zzb.zzk(zzc);
                } else if (zza == 11) {
                    this.zzb.zzj(zzc, this.zzk);
                } else {
                    this.zzb.zzi(zzc);
                }
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (zzmrVar.zzd(0)) {
                zzmq zzc2 = zzmrVar.zzc(0);
                if (this.zzj != null) {
                    zzv(zzc2.zzb, zzc2.zzd);
                }
            }
            if (zzmrVar.zzd(2) && this.zzj != null) {
                zzgaa zza2 = zzcoVar.zzo().zza();
                int size = zza2.size();
                int i8 = 0;
                loop1: while (true) {
                    if (i8 < size) {
                        zzdj zzdjVar = (zzdj) zza2.get(i8);
                        char c = 0;
                        while (true) {
                            int i9 = zzdjVar.zzb;
                            i6 = i8 + 1;
                            if (c <= 0) {
                                if (zzdjVar.zzd(0) && (zzaeVar = zzdjVar.zzb(0).zzp) != null) {
                                    break loop1;
                                } else {
                                    c = 1;
                                }
                            }
                        }
                    } else {
                        zzaeVar = null;
                        break;
                    }
                    i8 = i6;
                }
                if (zzaeVar != null) {
                    PlaybackMetrics.Builder builder = this.zzj;
                    int i10 = zzfy.zza;
                    int i11 = 0;
                    while (true) {
                        if (i11 < zzaeVar.zzb) {
                            UUID uuid = zzaeVar.zza(i11).zza;
                            if (uuid.equals(zzo.zzd)) {
                                i5 = 3;
                                break;
                            } else if (uuid.equals(zzo.zze)) {
                                i5 = 2;
                                break;
                            } else {
                                if (uuid.equals(zzo.zzc)) {
                                    i5 = 6;
                                    break;
                                }
                                i11++;
                            }
                        } else {
                            i5 = 1;
                            break;
                        }
                    }
                    builder.setDrmType(i5);
                }
            }
            if (zzmrVar.zzd(PointerIconCompat.TYPE_COPY)) {
                this.zzy++;
            }
            zzce zzceVar = this.zzn;
            if (zzceVar != null) {
                Context context = this.zza;
                if (zzceVar.zzb == 1001) {
                    i3 = 20;
                } else {
                    zziz zzizVar = (zziz) zzceVar;
                    if (zzizVar.zze == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i12 = zzizVar.zzi;
                    Throwable cause = zzceVar.getCause();
                    cause.getClass();
                    if (cause instanceof IOException) {
                        if (cause instanceof zzhr) {
                            i4 = ((zzhr) cause).zzd;
                            i3 = 5;
                            PlaybackSession playbackSession = this.zzc;
                            timeSinceCreatedMillis3 = AbstractC1325xa03074bf.m4392x75d576dc().setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                            errorCode2 = timeSinceCreatedMillis3.setErrorCode(i3);
                            subErrorCode = errorCode2.setSubErrorCode(i4);
                            exception = subErrorCode.setException(zzceVar);
                            build3 = exception.build();
                            playbackSession.reportPlaybackErrorEvent(build3);
                            this.zzz = true;
                            this.zzn = null;
                        } else if ((cause instanceof zzhq) || (cause instanceof zzcc)) {
                            i3 = 11;
                        } else {
                            boolean z2 = cause instanceof zzhp;
                            if (!z2 && !(cause instanceof zzhz)) {
                                if (zzceVar.zzb == 1002) {
                                    i3 = 21;
                                } else if (cause instanceof zzrq) {
                                    Throwable cause2 = cause.getCause();
                                    cause2.getClass();
                                    int i13 = zzfy.zza;
                                    if (cause2 instanceof MediaDrm.MediaDrmStateException) {
                                        errorCode = zzfy.zzj(((MediaDrm.MediaDrmStateException) cause2).getDiagnosticInfo());
                                        zzr = zzr(errorCode);
                                        int i14 = zzr;
                                        i4 = errorCode;
                                        i3 = i14;
                                        PlaybackSession playbackSession2 = this.zzc;
                                        timeSinceCreatedMillis3 = AbstractC1325xa03074bf.m4392x75d576dc().setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                                        errorCode2 = timeSinceCreatedMillis3.setErrorCode(i3);
                                        subErrorCode = errorCode2.setSubErrorCode(i4);
                                        exception = subErrorCode.setException(zzceVar);
                                        build3 = exception.build();
                                        playbackSession2.reportPlaybackErrorEvent(build3);
                                        this.zzz = true;
                                        this.zzn = null;
                                    } else if (zzfy.zza >= 23 && AbstractC1321x18c67f64.m4379x4440ab85(cause2)) {
                                        i3 = 27;
                                    } else if (cause2 instanceof NotProvisionedException) {
                                        i3 = 24;
                                    } else if (cause2 instanceof DeniedByServerException) {
                                        i3 = 29;
                                    } else {
                                        if (!(cause2 instanceof zzsb)) {
                                            i3 = cause2 instanceof zzro ? 28 : 30;
                                        }
                                        i3 = 23;
                                    }
                                } else if ((cause instanceof zzhl) && (cause.getCause() instanceof FileNotFoundException)) {
                                    Throwable cause3 = cause.getCause();
                                    cause3.getClass();
                                    Throwable cause4 = cause3.getCause();
                                    int i15 = zzfy.zza;
                                    i3 = ((cause4 instanceof ErrnoException) && ((ErrnoException) cause4).errno == OsConstants.EACCES) ? 32 : 31;
                                } else {
                                    i3 = 9;
                                }
                            } else if (zzfn.zzb(context).zza() == 1) {
                                i3 = 3;
                            } else {
                                Throwable cause5 = cause.getCause();
                                i3 = cause5 instanceof UnknownHostException ? 6 : cause5 instanceof SocketTimeoutException ? 7 : (z2 && ((zzhp) cause).zzc == 1) ? 4 : 8;
                            }
                        }
                    } else {
                        if (z) {
                            i3 = 35;
                            if (i12 != 0) {
                            }
                        }
                        if (z && i12 == 3) {
                            i3 = 15;
                        } else {
                            if (!z || i12 != 2) {
                                if (cause instanceof zzsx) {
                                    i4 = zzfy.zzj(((zzsx) cause).zzd);
                                    i3 = 13;
                                } else if (cause instanceof zzst) {
                                    i4 = zzfy.zzj(((zzst) cause).zzb);
                                    i3 = 14;
                                } else if (cause instanceof OutOfMemoryError) {
                                    i3 = 14;
                                } else if (cause instanceof zzpx) {
                                    i4 = ((zzpx) cause).zza;
                                    i3 = 17;
                                } else if (cause instanceof zzqa) {
                                    i4 = ((zzqa) cause).zza;
                                    i3 = 18;
                                } else {
                                    int i16 = zzfy.zza;
                                    if (cause instanceof MediaCodec.CryptoException) {
                                        errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                                        zzr = zzr(errorCode);
                                        int i142 = zzr;
                                        i4 = errorCode;
                                        i3 = i142;
                                    } else {
                                        i3 = 22;
                                    }
                                }
                                PlaybackSession playbackSession22 = this.zzc;
                                timeSinceCreatedMillis3 = AbstractC1325xa03074bf.m4392x75d576dc().setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                                errorCode2 = timeSinceCreatedMillis3.setErrorCode(i3);
                                subErrorCode = errorCode2.setSubErrorCode(i4);
                                exception = subErrorCode.setException(zzceVar);
                                build3 = exception.build();
                                playbackSession22.reportPlaybackErrorEvent(build3);
                                this.zzz = true;
                                this.zzn = null;
                            }
                            i3 = 23;
                        }
                    }
                }
                i4 = 0;
                PlaybackSession playbackSession222 = this.zzc;
                timeSinceCreatedMillis3 = AbstractC1325xa03074bf.m4392x75d576dc().setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                errorCode2 = timeSinceCreatedMillis3.setErrorCode(i3);
                subErrorCode = errorCode2.setSubErrorCode(i4);
                exception = subErrorCode.setException(zzceVar);
                build3 = exception.build();
                playbackSession222.reportPlaybackErrorEvent(build3);
                this.zzz = true;
                this.zzn = null;
            }
            if (zzmrVar.zzd(2)) {
                zzdk zzo = zzcoVar.zzo();
                boolean zzb = zzo.zzb(2);
                boolean zzb2 = zzo.zzb(1);
                boolean zzb3 = zzo.zzb(3);
                if (!zzb && !zzb2) {
                    if (zzb3) {
                        zzb3 = true;
                    }
                }
                if (!zzb) {
                    zzw(elapsedRealtime, null, 0);
                }
                if (!zzb2) {
                    zzt(elapsedRealtime, null, 0);
                }
                if (!zzb3) {
                    zzu(elapsedRealtime, null, 0);
                }
            }
            if (zzy(this.zzo)) {
                zzam zzamVar = this.zzo.zza;
                if (zzamVar.zzs != -1) {
                    zzw(elapsedRealtime, zzamVar, 0);
                    this.zzo = null;
                }
            }
            if (zzy(this.zzp)) {
                zzt(elapsedRealtime, this.zzp.zza, 0);
                this.zzp = null;
            }
            if (zzy(this.zzq)) {
                zzu(elapsedRealtime, this.zzq.zza, 0);
                this.zzq = null;
            }
            switch (zzfn.zzb(this.zza).zza()) {
                case 0:
                    i = 0;
                    break;
                case 1:
                    i = 9;
                    break;
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 4;
                    break;
                case 4:
                    i = 5;
                    break;
                case 5:
                    i = 6;
                    break;
                case 6:
                case 8:
                default:
                    i = 1;
                    break;
                case 7:
                    i = 3;
                    break;
                case 9:
                    i = 8;
                    break;
                case 10:
                    i = 7;
                    break;
            }
            if (i != this.zzm) {
                this.zzm = i;
                PlaybackSession playbackSession3 = this.zzc;
                networkType = AbstractC1325xa03074bf.m4391x1378447b().setNetworkType(i);
                timeSinceCreatedMillis2 = networkType.setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                build2 = timeSinceCreatedMillis2.build();
                playbackSession3.reportNetworkEvent(build2);
            }
            if (zzcoVar.zzf() != 2) {
                this.zzu = false;
            }
            if (((zzml) zzcoVar).zzC() == null) {
                this.zzv = false;
            } else if (zzmrVar.zzd(10)) {
                this.zzv = true;
            }
            int zzf = zzcoVar.zzf();
            if (this.zzu) {
                i2 = 5;
            } else if (this.zzv) {
                i2 = 13;
            } else {
                i2 = 4;
                if (zzf == 4) {
                    i2 = 11;
                } else if (zzf == 2) {
                    int i17 = this.zzl;
                    if (i17 == 0 || i17 == 2) {
                        i2 = 2;
                    } else if (!zzcoVar.zzv()) {
                        i2 = 7;
                    } else if (zzcoVar.zzg() != 0) {
                        i2 = 10;
                    } else {
                        i2 = 6;
                    }
                } else if (zzf == 3) {
                    if (zzcoVar.zzv()) {
                        if (zzcoVar.zzg() != 0) {
                            i2 = 9;
                        } else {
                            i2 = 3;
                        }
                    }
                } else if (zzf == 1 && this.zzl != 0) {
                    i2 = 12;
                } else {
                    i2 = this.zzl;
                }
            }
            if (this.zzl != i2) {
                this.zzl = i2;
                this.zzz = true;
                PlaybackSession playbackSession4 = this.zzc;
                state = AbstractC1325xa03074bf.m4395x34271fae().setState(this.zzl);
                timeSinceCreatedMillis = state.setTimeSinceCreatedMillis(elapsedRealtime - this.zzd);
                build = timeSinceCreatedMillis.build();
                playbackSession4.reportPlaybackStateEvent(build);
            }
            if (zzmrVar.zzd(1028)) {
                this.zzb.zzg(zzmrVar.zzc(1028));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzj(zzmq zzmqVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzk(zzmq zzmqVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzl(zzmq zzmqVar, zzce zzceVar) {
        this.zzn = zzceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzm(zzmq zzmqVar, zzcn zzcnVar, zzcn zzcnVar2, int i) {
        if (i == 1) {
            this.zzu = true;
            i = 1;
        }
        this.zzk = i;
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzn(zzmq zzmqVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzo(zzmq zzmqVar, zzir zzirVar) {
        this.zzw += zzirVar.zzg;
        this.zzx += zzirVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzp(zzmq zzmqVar, zzam zzamVar, zzis zzisVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzq(zzmq zzmqVar, zzdp zzdpVar) {
        zzow zzowVar = this.zzo;
        if (zzowVar != null) {
            zzam zzamVar = zzowVar.zza;
            if (zzamVar.zzs == -1) {
                zzak zzb = zzamVar.zzb();
                zzb.zzab(zzdpVar.zzc);
                zzb.zzI(zzdpVar.zzd);
                this.zzo = new zzow(zzb.zzac(), 0, zzowVar.zzc);
            }
        }
    }
}

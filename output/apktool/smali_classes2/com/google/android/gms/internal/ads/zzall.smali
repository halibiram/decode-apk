.class public final Lcom/google/android/gms/internal/ads/zzall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# instance fields
.field private final zzc:Ljava/lang/StringBuilder;

.field private final zzd:Ljava/util/ArrayList;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzall;->zza:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzall;->zzb:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0x4ecd272b0ec4827eL    # 4.024132329610638E71
        -0x4993664968ade765L    # -1.5655373426064642E-46
        -0x671e8bfc91aed07aL    # -7.834426836896661E-189
        0x5734a9eed8868438L    # 1.2423632890361217E112
        -0x790c70c45db5a563L    # -3.530870605917907E-275
        0xe721c7fd6316550L    # 4.345839575583198E-239
        0x1af7135ad19123fL
        0x73afd7020afc20b7L    # 1.7809748411656288E249
        -0x6fd4d55515002364L    # -8.749228313642743E-231
        -0x7f6b519b2245cca0L    # -7.362761065303148E-306
        0x30025d85791ab99cL    # 1.9825747605358828E-77
        0x37cc112e623f7e8bL    # 6.443893352155164E-40
    .end array-data

    :array_1
    .array-data 8
        -0x4ad00bbb4cfcaef1L    # -1.6680856767572802E-52
        -0x344fedfaa5d431cbL    # -3.9404491845247E56
        0x25071b067bc4c8e8L    # 2.604165189703762E-130
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 24
    .line 25
    return-void
.end method

.method public static zzb(I)F
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const p0, 0x3f6b851f    # 0.92f

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 20
    .line 21
    return p0

    .line 22
    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    .line 23
    .line 24
    .line 25
    return p0
.end method

.method private static zzc(Ljava/util/regex/Matcher;I)J
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/32 v2, 0x36ee80

    .line 14
    .line 15
    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/32 v4, 0xea60

    .line 35
    .line 36
    .line 37
    mul-long v2, v2, v4

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    add-int/lit8 v0, p1, 0x3

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/16 v4, 0x3e8

    .line 54
    .line 55
    mul-long v0, v0, v4

    .line 56
    .line 57
    add-long/2addr v0, v2

    .line 58
    add-int/lit8 p1, p1, 0x4

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    add-long/2addr v0, p0

    .line 71
    :cond_1
    mul-long v0, v0, v4

    .line 72
    .line 73
    return-wide v0
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    add-int v8, v1, p3

    .line 1
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    move-object/from16 v10, p1

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 2
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzB()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    :cond_0
    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    .line 6
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v9, Lcom/google/android/gms/internal/ads/zzall;->zza:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 11
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzall;->zzc(Ljava/util/regex/Matcher;I)J

    move-result-wide v13

    const/4 v8, 0x6

    .line 12
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzall;->zzc(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 15
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 16
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v7, [J

    fill-array-data v15, :array_2

    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzall;->zzb:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v10, 0x0

    .line 22
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    sub-int v7, v16, v10

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v6, v7, v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 p1, v2

    new-array v2, v5, [J

    const-wide v17, -0x587e65b32ea9de41L    # -2.18138265174366E-118

    const/16 v16, 0x0

    aput-wide v17, v2, v16

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v15, v7, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v3

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzall;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 29
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x3

    new-array v10, v7, [J

    fill-array-data v10, :array_3

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr v3, v5

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzakj;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzea;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 34
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    if-nez v4, :cond_7

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x2

    const/4 v7, 0x0

    goto/16 :goto_b

    .line 36
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    const/4 v10, 0x2

    goto/16 :goto_5

    .line 37
    :sswitch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x2

    new-array v11, v10, [J

    fill-array-data v11, :array_4

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    goto/16 :goto_6

    :sswitch_1
    const/4 v10, 0x2

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_5

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    goto :goto_6

    :sswitch_2
    const/4 v10, 0x2

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_6

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    goto :goto_6

    :sswitch_3
    const/4 v10, 0x2

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_7

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :sswitch_4
    const/4 v10, 0x2

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_8

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    goto :goto_6

    :sswitch_5
    const/4 v10, 0x2

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_9

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, -0x1

    :goto_6
    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_a

    if-eq v2, v10, :cond_a

    const/4 v11, 0x3

    if-eq v2, v11, :cond_9

    const/4 v11, 0x4

    if-eq v2, v11, :cond_9

    const/4 v11, 0x5

    if-eq v2, v11, :cond_9

    .line 38
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    goto :goto_7

    .line 39
    :cond_9
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 41
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_8

    .line 42
    :sswitch_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_a

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x5

    goto :goto_8

    :sswitch_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_b

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x4

    goto :goto_8

    :sswitch_8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_c

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x3

    goto :goto_8

    :sswitch_9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_d

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x2

    goto :goto_8

    :sswitch_a
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_e

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x1

    goto :goto_8

    :sswitch_b
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v10, [J

    fill-array-data v11, :array_f

    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x0

    :cond_b
    :goto_8
    if-eqz v7, :cond_d

    if-eq v7, v5, :cond_d

    if-eq v7, v10, :cond_d

    const/4 v2, 0x3

    if-eq v7, v2, :cond_c

    const/4 v2, 0x4

    if-eq v7, v2, :cond_c

    const/4 v2, 0x5

    if-eq v7, v2, :cond_c

    .line 43
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    :goto_9
    const/4 v2, 0x2

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    goto :goto_9

    :cond_d
    const/4 v2, 0x2

    .line 45
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 46
    :goto_a
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzea;->zzb()I

    move-result v4

    .line 47
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzall;->zzb(I)F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzea;->zza()I

    move-result v4

    .line 48
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzall;->zzb(I)F

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    move-result-object v4

    :goto_b
    sub-long v15, v8, v13

    .line 50
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v12

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v4, p5

    .line 51
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/Object;)V

    const/4 v6, 0x5

    :goto_c
    const/4 v9, 0x4

    const/4 v10, 0x3

    goto :goto_d

    :cond_e
    move-object/from16 v4, p5

    const/4 v2, 0x2

    const/4 v7, 0x0

    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x5

    new-array v9, v6, [J

    fill-array-data v9, :array_10

    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_11

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_0
    move-object/from16 v4, p5

    const/4 v2, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x4

    new-array v10, v9, [J

    fill-array-data v10, :array_12

    invoke-direct {v3, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x3

    new-array v11, v10, [J

    fill-array-data v11, :array_13

    invoke-direct {v8, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    move-object/from16 v4, p5

    const/4 v2, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    goto :goto_c

    :goto_d
    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_5
        -0x28ddbda8 -> :sswitch_4
        -0x28ddbd89 -> :sswitch_3
        -0x28ddbd4b -> :sswitch_2
        -0x28ddbd2c -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_b
        -0x28ddbdc7 -> :sswitch_a
        -0x28ddbda8 -> :sswitch_9
        -0x28ddbd2c -> :sswitch_8
        -0x28ddbd0d -> :sswitch_7
        -0x28ddbcee -> :sswitch_6
    .end sparse-switch

    :array_0
    .array-data 8
        0x7b243ff77fb1ac5dL    # 1.5055949751949606E285
        0x33def9f654558f04L    # 7.7106681367057715E-59
        -0x155d20f84515534L
    .end array-data

    :array_1
    .array-data 8
        -0x1838c2e57aa9c6beL    # -8.283212856952205E191
        0x581c111929f6507eL    # 2.764719605488719E116
        0x4009c94dea7a7d71L    # 3.2232931440955146
    .end array-data

    :array_2
    .array-data 8
        -0x2093ac075a0c7c46L    # -4.636432555455947E151
        0x3800f6115f3ac895L    # 6.230561815844363E-39
    .end array-data

    :array_3
    .array-data 8
        -0x7d1c1834c14acc5dL    # -9.739712672046841E-295
        0x46be945ff4ff5bfcL    # 6.202277534213945E32
        -0xba2d4128a86f7aaL
    .end array-data

    :array_4
    .array-data 8
        -0x19f8f9681076e9cdL    # -3.057463436922175E183
        -0x391e3bc5c0bfae26L    # -2.8827816776920946E33
    .end array-data

    :array_5
    .array-data 8
        0x6beb71d14723b1baL    # 7.218116176970499E211
        -0x35c5b0afec4743c4L    # -3.8451838619110036E49
    .end array-data

    :array_6
    .array-data 8
        0x3d827167587ca694L    # 2.0967244358308425E-12
        0x3609c4612eb38539L    # 2.20382133245573E-48
    .end array-data

    :array_7
    .array-data 8
        -0x46d4dd17b77849cL
        0x75c70903f3b4908fL    # 2.2135971317994183E259
    .end array-data

    :array_8
    .array-data 8
        0x7680c04d73a5ea10L
        -0x7ec1d0417a3fb705L
    .end array-data

    :array_9
    .array-data 8
        -0x60db7593cfd97ebL
        -0x45d8fbff076a5a14L    # -1.4524910768093865E-28
    .end array-data

    :array_a
    .array-data 8
        -0x78473b147c7f1d94L
        -0x1f81e344dd83f188L    # -6.459824035237085E156
    .end array-data

    :array_b
    .array-data 8
        0x5f23be4ee79cd732L    # 2.019619758556109E150
        -0x2f44a4746a9c773cL    # -8.109551363620511E80
    .end array-data

    :array_c
    .array-data 8
        -0x68fea818c8f7952L    # -8.909822096277067E276
        -0x307b3a80ad4ee9beL    # -1.1744005743222213E75
    .end array-data

    :array_d
    .array-data 8
        0x3cd3294b1c9db736L    # 1.0636659533619798E-15
        0x7505fe082f58638eL    # 5.159614230925026E255
    .end array-data

    :array_e
    .array-data 8
        -0x667a5ed1da2b1a0dL    # -9.942174491817226E-186
        0x604adef326061df0L    # 7.20559669250155E155
    .end array-data

    :array_f
    .array-data 8
        0xc97c70dba7689e4L
        0x21ba4b7325775b3bL
    .end array-data

    :array_10
    .array-data 8
        0x3f899011a67530ccL    # 0.012481820957554034
        -0x1cb99c4f36832aa6L    # -1.6899363170863645E170
        -0x3910332e85c7d193L    # -5.1598565838993863E33
        -0x320a7f733fbe6f2bL    # -3.6231047184182024E67
        0x7ae3ef1bb3176122L    # 9.263193580777256E283
    .end array-data

    :array_11
    .array-data 8
        -0x19022577857c81dbL    # -1.2989567043452834E188
        -0x38cd9725632c964bL    # -9.558803432707885E34
        -0x22c3dd63b02fe19eL
    .end array-data

    :array_12
    .array-data 8
        -0x224d1917a475ed31L    # -2.3049702349010106E143
        -0x5ba5db78dc29611bL
        -0x501d32262c0f48e5L    # -5.074856895370847E-78
        0x1dd5855a89088573L    # 5.839330690975313E-165
    .end array-data

    :array_13
    .array-data 8
        0x2f1634a7837bce7L
        -0x36efce6248061bc4L    # -9.028352351624677E43
        -0x41ed55e4847f282bL    # -1.0864158305732193E-9
    .end array-data
.end method

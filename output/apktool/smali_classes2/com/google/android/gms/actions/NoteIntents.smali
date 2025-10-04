.class public Lcom/google/android/gms/actions/NoteIntents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_APPEND_NOTE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final ACTION_CREATE_NOTE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final ACTION_DELETE_NOTE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_NOTE_QUERY:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_TEXT:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_CREATE_NOTE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_APPEND_NOTE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_DELETE_NOTE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_TEXT:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_NOTE_QUERY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0xe3ae4a4cd8b756cL
        -0x3b6f248097f5f95cL    # -1.9901720319230187E22
        0x36e3b071a0058d32L    # 2.7590493061327586E-44
        -0x76695406977a9fc3L    # -1.7999867219111978E-262
        -0x39daadb608e7cfcL
        -0x6072fcbd1001a920L
        0x6a02b1c00bd48d0aL    # 4.579068689121824E202
    .end array-data

    :array_1
    .array-data 8
        0x62c6a754f6190369L    # 6.679217713857165E167
        -0x382764bb48723de7L    # -1.3083068663355881E38
        -0x78f8e8365ce23e57L    # -8.337442037838666E-275
        -0x29d0fd782b69408cL    # -1.4224225715353229E107
        -0x2d493fec81e5083L    # -8.7567552943804E294
        -0x4b2e08c33cbeaac8L    # -2.930803130642387E-54
        0x5ca594987ef366b2L    # 2.007745040735934E138
    .end array-data

    :array_2
    .array-data 8
        -0x69fc8ea0d891bcc1L
        -0x12dfb058d8593b65L    # -4.498330007203711E217
        0x75a8a71dbb406d8fL    # 5.922601327275971E258
        0x40dbf4e1bc6879dcL    # 28627.527124518398
        0x284b512a7651199L
        -0x4169e015ca2e5558L    # -3.296832369939031E-7
        0x732d4a205aa9c973L    # 6.399694712850236E246
    .end array-data

    :array_3
    .array-data 8
        -0x273445cc34a06a1cL
        -0x594257198062b438L    # -4.486725561555071E-122
        0x115bdc92f2036277L    # 4.704457756516701E-225
        -0x75171dc5a9e065f5L    # -4.143131345981404E-256
        -0x38c428458f1c4d8L
        0x3b927656fd594bf8L    # 9.773841634060631E-22
        -0x51b8c1a4cc3142aaL    # -9.347473609145636E-86
    .end array-data

    :array_4
    .array-data 8
        -0x1ee85984d0508248L    # -5.195348543770914E159
        0x6001b9417a270fbcL    # 2.970442084726651E154
        0x5b3b67d583ea3edeL    # 3.039467255171024E131
        -0x62608e47eb33f21aL
        -0x679b4b1644f1a779L
        -0x462696301a7338fcL    # -5.01189533160822E-30
        -0x63ecd0fcd530aaa4L
    .end array-data

    :array_5
    .array-data 8
        -0x650b38f1acd2b761L    # -8.011561633496004E-179
        0x572beedb3d066357L    # 8.397045379252804E111
        0x2b733cd91742849L
        -0x65d072f9f3f7177cL
        -0x23eb54be786fe6a9L    # -3.755751701784499E135
        0x2a5243eec496b058L    # 7.963973438679111E-105
        -0x265322c545e09fb4L    # -9.540418361887279E123
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

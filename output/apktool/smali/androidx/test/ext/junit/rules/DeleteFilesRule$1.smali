.class Landroidx/test/ext/junit/rules/DeleteFilesRule$1;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/ext/junit/rules/DeleteFilesRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/ext/junit/rules/DeleteFilesRule;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Landroidx/test/ext/junit/rules/DeleteFilesRule;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->this$0:Landroidx/test/ext/junit/rules/DeleteFilesRule;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x18

    .line 61
    .line 62
    if-lt v2, v3, :cond_1

    .line 63
    .line 64
    new-instance v2, Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/io/File;

    .line 100
    .line 101
    invoke-static {v0, v3}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$000(Ljava/util/Set;Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 106
    .line 107
    invoke-virtual {v2}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/io/File;

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$100(Ljava/util/Set;Ljava/io/File;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    return-void

    .line 131
    :catchall_0
    move-exception v2

    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/io/File;

    .line 147
    .line 148
    invoke-static {v0, v3}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$100(Ljava/util/Set;Ljava/io/File;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    throw v2
.end method

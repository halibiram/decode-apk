.class public final Lcom/v2ray/ang/plugin/PluginContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/v2ray/ang/plugin/PluginContract;",
        "",
        "<init>",
        "()V",
        "ACTION_NATIVE_PLUGIN",
        "",
        "EXTRA_ENTRY",
        "METADATA_KEY_ID",
        "METADATA_KEY_EXECUTABLE_PATH",
        "METHOD_GET_EXECUTABLE",
        "COLUMN_PATH",
        "COLUMN_MODE",
        "SCHEME",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_NATIVE_PLUGIN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_MODE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_PATH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_ENTRY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/v2ray/ang/plugin/PluginContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METADATA_KEY_EXECUTABLE_PATH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METADATA_KEY_ID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_GET_EXECUTABLE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->ACTION_NATIVE_PLUGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->EXTRA_ENTRY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->METADATA_KEY_ID:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->METADATA_KEY_EXECUTABLE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->METHOD_GET_EXECUTABLE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->COLUMN_PATH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->COLUMN_MODE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->SCHEME:Ljava/lang/String;

    new-instance v0, Lcom/v2ray/ang/plugin/PluginContract;

    invoke-direct {v0}, Lcom/v2ray/ang/plugin/PluginContract;-><init>()V

    sput-object v0, Lcom/v2ray/ang/plugin/PluginContract;->INSTANCE:Lcom/v2ray/ang/plugin/PluginContract;

    return-void

    :array_0
    .array-data 8
        -0x767e1d30c606962dL    # -7.100131656890361E-263
        0xd50611ceb49dd8aL
        0x2cff75673e07a053L    # 6.032548441401817E-92
        0x1803c305f3707232L    # 5.414264866737635E-193
        -0x68012b6f54b7a891L    # -4.223388184465074E-193
        -0x554689e7ba789b0dL    # -7.104969200202466E-103
        0x78caee89c60e0209L    # 7.284693628630482E273
        0x7bdfdc948a8b971bL    # 4.8515890923192017E288
    .end array-data

    :array_1
    .array-data 8
        0x5e012e312977d797L    # 6.704125791880134E144
        0x7d22d114b212d7e0L    # 6.008827574453417E294
        0x4b3dd47125603af7L    # 2.8571321477443313E54
        0xebbc92296051c5eL
        0x58141958b2557eb8L    # 1.9798532572193033E116
        -0x472b9665d5f33cfbL    # -6.142665870599077E-35
        0x4e0655d0b15afcb0L    # 7.526952783816138E67
    .end array-data

    :array_2
    .array-data 8
        -0x7ddde912ba9fdbdfL
        -0x691723140773bd97L
        -0x2c965013f63031daL    # -6.697694870957651E93
        -0x1b129a4dd255d323L    # -1.4890667322735403E178
        0x63c0781855cd6b19L    # 3.182276866610225E172
        -0x4ea3ed94ed45eed1L    # -6.35526342177363E-71
    .end array-data

    :array_3
    .array-data 8
        0x10bf28da3e6be4f9L
        -0x3f320aa7801869b2L    # -15338.691403339759
        -0x6e37591d033138bfL    # -5.327992902096488E-223
        -0x35641c2b776ef703L    # -2.6087183851211044E51
        -0x55a5d6a3e14dcf90L
        -0x3e01feb6fd445ec1L    # -8.054411307726867E9
        0xabc9c505b107957L
    .end array-data

    :array_4
    .array-data 8
        0x4c0a5501ce0ed20aL    # 2.0661126491501637E58
        -0x12799dd5a9b8f72eL    # -3.950699955071748E219
        0x3546f324eeee01caL    # 4.792138145030549E-52
        0x592f962fcfc0b8eL
    .end array-data

    :array_5
    .array-data 8
        -0x557ea577b39fc272L    # -6.053159876072357E-104
        0x4bea82ca90ad20daL    # 5.2003636790963085E57
    .end array-data

    :array_6
    .array-data 8
        -0x6102717e9819b95cL    # -2.102314535568653E-159
        -0x221622b8f78f13a4L    # -2.5231888856416287E144
    .end array-data

    :array_7
    .array-data 8
        -0x5a78f95a6f30eba4L    # -6.643694740935932E-128
        -0x376bc5870779dd4eL    # -4.4053572342158155E41
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class public final Lcom/google/gson/internal/sql/SqlTypesSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final SUPPORTS_SQL_TYPES:Z

.field public static final TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    sput-boolean v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    .line 27
    .line 28
    const-class v1, Ljava/sql/Date;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/google/gson/internal/sql/SqlTypesSupport$1;-><init>(Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 34
    .line 35
    new-instance v0, Lcom/google/gson/internal/sql/SqlTypesSupport$2;

    .line 36
    .line 37
    const-class v1, Ljava/sql/Timestamp;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/google/gson/internal/sql/SqlTypesSupport$2;-><init>(Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 43
    .line 44
    sget-object v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 45
    .line 46
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 47
    .line 48
    sget-object v0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 49
    .line 50
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 51
    .line 52
    sget-object v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 53
    .line 54
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 59
    .line 60
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 61
    .line 62
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 63
    .line 64
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIME_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 65
    .line 66
    sput-object v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 67
    .line 68
    :goto_1
    return-void

    .line 69
    :array_0
    .array-data 8
        0x7918b44d43dd996bL    # 2.138300200361805E275
        0x3d7ac097abbab7dbL    # 1.5206930079907812E-12
        0x2c9fc1ad910ea517L    # 9.515130309700458E-94
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

.class public final Lorg/junit/runner/manipulation/Alphanumeric;
.super Lorg/junit/runner/manipulation/Sorter;
.source "SourceFile"

# interfaces
.implements Lorg/junit/runner/manipulation/Ordering$Factory;


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/manipulation/Alphanumeric$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/junit/runner/manipulation/Alphanumeric$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/junit/runner/manipulation/Alphanumeric;->COMPARATOR:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/junit/runner/manipulation/Alphanumeric;->COMPARATOR:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/junit/runner/manipulation/Sorter;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lorg/junit/runner/manipulation/Ordering$Context;)Lorg/junit/runner/manipulation/Ordering;
    .locals 0

    return-object p0
.end method

.class final Lcom/google/common/collect/ImmutableSetMultimap$SetFieldSettersHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetFieldSettersHolder"
.end annotation


# static fields
.field static final EMPTY_SET_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Serialization$FieldSetter<",
            "Lcom/google/common/collect/ImmutableSetMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    const-class v1, Lcom/google/common/collect/ImmutableSetMultimap;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/common/collect/ImmutableSetMultimap$SetFieldSettersHolder;->EMPTY_SET_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    .line 23
    .line 24
    return-void

    :array_0
    .array-data 8
        -0x15a8b4c4ec7fef48L    # -1.825823229914177E204
        0x5293ccfd1d630606L    # 6.302314700894561E89
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

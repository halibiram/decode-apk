.class Lcom/panda912/muddy/ObfuscatedString$2;
.super Lcom/panda912/muddy/ObfuscatedString$Codec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/panda912/muddy/ObfuscatedString$Codec<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/panda912/muddy/ObfuscatedString;


# direct methods
.method public constructor <init>(Lcom/panda912/muddy/ObfuscatedString;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/panda912/muddy/ObfuscatedString$2;->this$0:Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/panda912/muddy/ObfuscatedString$Codec;-><init>(Lcom/panda912/muddy/ObfuscatedString;Lcom/panda912/muddy/ObfuscatedString$1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic decode([BI)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/panda912/muddy/ObfuscatedString$2;->decode([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decode([BI)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/panda912/muddy/ObfuscatedString;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

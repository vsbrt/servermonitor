.class Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompressorEntry"
.end annotation


# instance fields
.field compressorClass:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "compressorClass"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    .line 36
    return-void
.end method

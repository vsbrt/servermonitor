.class public Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
.super Ljava/lang/Object;
.source "SFTPv3FileAttributes.java"


# instance fields
.field public atime:Ljava/lang/Long;

.field public gid:Ljava/lang/Integer;

.field public mtime:Ljava/lang/Long;

.field public permissions:Ljava/lang/Integer;

.field public size:Ljava/lang/Long;

.field public uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 22
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 68
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 74
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getOctalPermissions()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 127
    const/4 v3, 0x0

    .line 143
    :goto_0
    return-object v3

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 135
    .local v0, "leadingZeros":I
    :goto_1
    if-lez v0, :cond_1

    .line 137
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isRegularFile()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v2

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isSymlink()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v2

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xa000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

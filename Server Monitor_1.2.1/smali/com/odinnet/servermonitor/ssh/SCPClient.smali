.class public Lcom/odinnet/servermonitor/ssh/SCPClient;
.super Ljava/lang/Object;
.source "SCPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    }
.end annotation


# instance fields
.field conn:Lcom/odinnet/servermonitor/ssh/Connection;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;)V
    .locals 2
    .param p1, "conn"    # Lcom/odinnet/servermonitor/ssh/Connection;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot accept null argument!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/SCPClient;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    .line 40
    return-void
.end method

.method private get([Ljava/lang/String;[Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "remoteFiles"    # [Ljava/lang/String;
    .param p2, "targets"    # [Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    const/4 v3, 0x0

    .line 637
    .local v3, "sess":Lcom/odinnet/servermonitor/ssh/Session;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 638
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null argument."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 640
    :cond_1
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_2

    .line 641
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Length of arguments does not match."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 643
    :cond_2
    array-length v5, p1

    if-nez v5, :cond_4

    .line 676
    :cond_3
    :goto_0
    return-void

    .line 646
    :cond_4
    const-string v0, "scp -f"

    .line 648
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_7

    .line 650
    aget-object v5, p1, v2

    if-nez v5, :cond_5

    .line 651
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot accept null filename."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    :cond_5
    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "tmp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 656
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot accept empty filename."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 658
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_7
    :try_start_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/SCPClient;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/Connection;->openSession()Lcom/odinnet/servermonitor/ssh/Session;

    move-result-object v3

    .line 664
    invoke-virtual {v3, v0}, Lcom/odinnet/servermonitor/ssh/Session;->execCommand(Ljava/lang/String;)V

    .line 665
    invoke-direct {p0, v3, p2}, Lcom/odinnet/servermonitor/ssh/SCPClient;->receiveFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    if-eqz v3, :cond_3

    .line 674
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    goto :goto_0

    .line 667
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 669
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error during SCP transfer."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/SCPClient;
    check-cast p0, Ljava/io/IOException;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_8

    .line 674
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    :cond_8
    throw v5
.end method

.method private parseCLine(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    .locals 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x5

    const-string v9, "Malformed C line sent by remote SCP binary."

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    .line 97
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary, line too short."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_2

    .line 100
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    :cond_2
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 104
    .local v3, "length_name_sep":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 105
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    :cond_3
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "length_substring":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "name_substring":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 111
    :cond_4
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 114
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :cond_6
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 125
    .local v1, "len":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_7

    .line 126
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary, illegal file length."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    .end local v1    # "len":J
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed C line sent by remote SCP binary, cannot parse file length."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 128
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "len":J
    :cond_7
    new-instance v5, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;

    invoke-direct {v5, p0}, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;-><init>(Lcom/odinnet/servermonitor/ssh/SCPClient;)V

    .line 129
    .local v5, "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    iput-wide v1, v5, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;->length:J

    .line 130
    iput-object v6, v5, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    .line 132
    return-object v5
.end method

.method private readResponse(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 46
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 50
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote scp terminated unexpectedly."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    .line 53
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote scp sent illegal error code."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_2
    if-ne v0, v3, :cond_3

    .line 56
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote scp terminated with error."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_3
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "err":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote scp terminated with error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private receiveFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/io/OutputStream;)V
    .locals 15
    .param p1, "sess"    # Lcom/odinnet/servermonitor/ssh/Session;
    .param p2, "targets"    # [Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/16 v12, 0x2000

    new-array v1, v12, [B

    .line 229
    .local v1, "buffer":[B
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v12

    const/16 v13, 0x200

    invoke-direct {v7, v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 230
    .local v7, "os":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v12

    const v13, 0x9c40

    invoke-direct {v4, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 232
    .local v4, "is":Ljava/io/InputStream;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write(I)V

    .line 233
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    if-ge v3, v12, :cond_8

    .line 237
    const/4 v6, 0x0

    .line 241
    .local v6, "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 242
    .local v2, "c":I
    if-gez v2, :cond_1

    .line 243
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Remote scp terminated unexpectedly."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 245
    :cond_1
    invoke-direct {p0, v4}, Lcom/odinnet/servermonitor/ssh/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "line":Ljava/lang/String;
    const/16 v12, 0x54

    if-eq v2, v12, :cond_0

    .line 254
    const/4 v12, 0x1

    if-eq v2, v12, :cond_2

    const/4 v12, 0x2

    if-ne v2, v12, :cond_3

    .line 255
    :cond_2
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remote SCP error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 257
    :cond_3
    const/16 v12, 0x43

    if-ne v2, v12, :cond_4

    .line 259
    invoke-direct {p0, v5}, Lcom/odinnet/servermonitor/ssh/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;

    move-result-object v6

    .line 266
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write(I)V

    .line 267
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 269
    iget-wide v8, v6, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;->length:J

    .line 271
    .local v8, "remain":J
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_7

    .line 274
    array-length v12, v1

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-lez v12, :cond_5

    .line 275
    array-length v11, v1

    .line 279
    .local v11, "trans":I
    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v4, v1, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 281
    .local v10, "this_time_received":I
    if-gez v10, :cond_6

    .line 283
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Remote scp terminated connection unexpectedly"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 263
    .end local v8    # "remain":J
    .end local v10    # "this_time_received":I
    .end local v11    # "trans":I
    :cond_4
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remote SCP error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-char v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 277
    .restart local v8    # "remain":J
    :cond_5
    long-to-int v11, v8

    .restart local v11    # "trans":I
    goto :goto_2

    .line 286
    .restart local v10    # "this_time_received":I
    :cond_6
    aget-object v12, p2, v3

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 288
    int-to-long v12, v10

    sub-long/2addr v8, v12

    .line 289
    goto :goto_1

    .line 291
    .end local v10    # "this_time_received":I
    .end local v11    # "trans":I
    :cond_7
    invoke-direct {p0, v4}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 293
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write(I)V

    .line 294
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2    # "c":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    .end local v8    # "remain":J
    :cond_8
    return-void
.end method

.method private receiveFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "sess"    # Lcom/odinnet/servermonitor/ssh/Session;
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v4, v0

    .line 302
    .local v4, "buffer":[B
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v18

    const/16 v19, 0x200

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 303
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v18

    const v19, 0x9c40

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 305
    .local v10, "is":Ljava/io/InputStream;
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 306
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 308
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 310
    const/4 v12, 0x0

    .line 314
    .local v12, "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    :cond_0
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 315
    .local v5, "c":I
    if-gez v5, :cond_1

    .line 316
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Remote scp terminated unexpectedly."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 318
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 320
    .local v11, "line":Ljava/lang/String;
    const/16 v18, 0x54

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 327
    const/16 v18, 0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x2

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 328
    :cond_2
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Remote SCP error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 330
    :cond_3
    const/16 v18, 0x43

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 332
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;

    move-result-object v12

    .line 339
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 340
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 342
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-char v19, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v12

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v6, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 347
    .local v7, "fop":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    .end local v7    # "fop":Ljava/io/FileOutputStream;
    .local v8, "fop":Ljava/io/FileOutputStream;
    :try_start_1
    iget-wide v14, v12, Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;->length:J

    .line 351
    .local v14, "remain":J
    :goto_1
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_8

    .line 354
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v14, v18

    if-lez v18, :cond_6

    .line 355
    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    .line 359
    .local v17, "trans":I
    :goto_2
    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .line 361
    .local v16, "this_time_received":I
    if-gez v16, :cond_7

    .line 363
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Remote scp terminated connection unexpectedly"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v14    # "remain":J
    .end local v16    # "this_time_received":I
    .end local v17    # "trans":I
    :catchall_0
    move-exception v18

    move-object v7, v8

    .end local v8    # "fop":Ljava/io/FileOutputStream;
    .restart local v7    # "fop":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v7, :cond_4

    .line 374
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v18

    .line 336
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fop":Ljava/io/FileOutputStream;
    :cond_5
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Remote SCP error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move v0, v5

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 357
    .restart local v6    # "f":Ljava/io/File;
    .restart local v8    # "fop":Ljava/io/FileOutputStream;
    .restart local v14    # "remain":J
    :cond_6
    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "trans":I
    goto :goto_2

    .line 366
    .restart local v16    # "this_time_received":I
    :cond_7
    const/16 v18, 0x0

    :try_start_2
    move-object v0, v8

    move-object v1, v4

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 369
    goto :goto_1

    .line 373
    .end local v16    # "this_time_received":I
    .end local v17    # "trans":I
    :cond_8
    if-eqz v8, :cond_9

    .line 374
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 377
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 379
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 380
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 382
    .end local v5    # "c":I
    .end local v6    # "f":Ljava/io/File;
    .end local v8    # "fop":Ljava/io/FileOutputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    .end local v14    # "remain":J
    :cond_a
    return-void

    .line 373
    .restart local v5    # "c":I
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "fop":Ljava/io/FileOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "lnp":Lcom/odinnet/servermonitor/ssh/SCPClient$LenNamePair;
    :catchall_1
    move-exception v18

    goto :goto_3
.end method

.method private receiveLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 74
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote scp sent a too long line"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 78
    .local v0, "c":I
    if-gez v0, :cond_1

    .line 79
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote scp terminated unexpectedly."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    :cond_2
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private sendBytes(Lcom/odinnet/servermonitor/ssh/Session;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sess"    # Lcom/odinnet/servermonitor/ssh/Session;
    .param p2, "data"    # [B
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "ISO-8859-1"

    const-string v6, " "

    .line 137
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v2

    .line 138
    .local v2, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 140
    .local v1, "is":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "cline":Ljava/lang/String;
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 145
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 147
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 149
    array-length v3, p2

    invoke-virtual {v2, p2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 151
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 153
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 155
    const-string v3, "E\n"

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 157
    return-void
.end method

.method private sendFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "sess"    # Lcom/odinnet/servermonitor/ssh/Session;
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "remoteFiles"    # [Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/16 v14, 0x2000

    new-array v2, v14, [B

    .line 163
    .local v2, "buffer":[B
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v14

    const v15, 0x9c40

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 164
    .local v9, "os":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v14

    const/16 v15, 0x200

    invoke-direct {v8, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 166
    .local v8, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 168
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    if-ge v7, v14, :cond_6

    .line 170
    new-instance v4, Ljava/io/File;

    aget-object v14, p2, v7

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 175
    .local v10, "remain":J
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v0, v0

    move v14, v0

    if-le v14, v7, :cond_1

    aget-object v14, p3, v7

    if-eqz v14, :cond_1

    .line 176
    aget-object v12, p3, v7

    .line 180
    .local v12, "remoteName":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "C"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "cline":Ljava/lang/String;
    const-string v14, "ISO-8859-1"

    invoke-virtual {v3, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write([B)V

    .line 183
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 185
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 187
    const/4 v5, 0x0

    .line 191
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_4

    .line 196
    :try_start_1
    array-length v14, v2

    int-to-long v14, v14

    cmp-long v14, v10, v14

    if-lez v14, :cond_2

    .line 197
    array-length v13, v2

    .line 201
    .local v13, "trans":I
    :goto_3
    const/4 v14, 0x0

    invoke-virtual {v6, v2, v14, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-eq v14, v13, :cond_3

    .line 202
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read enough from local file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, p2, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v13    # "trans":I
    :catchall_0
    move-exception v14

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v5, :cond_0

    .line 212
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v14

    .line 178
    .end local v3    # "cline":Ljava/lang/String;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "remoteName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "remoteName":Ljava/lang/String;
    goto/16 :goto_1

    .line 199
    .restart local v3    # "cline":Ljava/lang/String;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    long-to-int v13, v10

    .restart local v13    # "trans":I
    goto :goto_3

    .line 204
    :cond_3
    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v9, v2, v14, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    int-to-long v14, v13

    sub-long/2addr v10, v14

    .line 207
    goto :goto_2

    .line 211
    .end local v13    # "trans":I
    :cond_4
    if-eqz v6, :cond_5

    .line 212
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 215
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write(I)V

    .line 216
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 218
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 221
    .end local v3    # "cline":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "remain":J
    .end local v12    # "remoteName":Ljava/lang/String;
    :cond_6
    const-string v14, "E\n"

    const-string v15, "ISO-8859-1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 223
    return-void

    .line 211
    .restart local v3    # "cline":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "remain":J
    .restart local v12    # "remoteName":Ljava/lang/String;
    :catchall_1
    move-exception v14

    goto :goto_4
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 630
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/io/OutputStream;

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->get([Ljava/lang/String;[Ljava/io/OutputStream;)V

    .line 631
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "localTargetDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/odinnet/servermonitor/ssh/SCPClient;->get([Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "remoteFiles"    # [Ljava/lang/String;
    .param p2, "localTargetDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 692
    .local v3, "sess":Lcom/odinnet/servermonitor/ssh/Session;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 693
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null argument."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 695
    :cond_1
    array-length v5, p1

    if-nez v5, :cond_3

    .line 728
    :cond_2
    :goto_0
    return-void

    .line 698
    :cond_3
    const-string v0, "scp -f"

    .line 700
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_6

    .line 702
    aget-object v5, p1, v2

    if-nez v5, :cond_4

    .line 703
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot accept null filename."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 705
    :cond_4
    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "tmp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 708
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot accept empty filename."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 710
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 715
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_6
    :try_start_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/SCPClient;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/Connection;->openSession()Lcom/odinnet/servermonitor/ssh/Session;

    move-result-object v3

    .line 716
    invoke-virtual {v3, v0}, Lcom/odinnet/servermonitor/ssh/Session;->execCommand(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, v3, p1, p2}, Lcom/odinnet/servermonitor/ssh/SCPClient;->receiveFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-eqz v3, :cond_2

    .line 726
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    goto :goto_0

    .line 719
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 721
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error during SCP transfer."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/SCPClient;
    check-cast p0, Ljava/io/IOException;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_7

    .line 726
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    :cond_7
    throw v5
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "localFile"    # Ljava/lang/String;
    .param p2, "remoteTargetDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "0600"

    invoke-virtual {p0, v0, p2, v1}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "localFile"    # Ljava/lang/String;
    .param p2, "remoteTargetDirectory"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "localFile"    # Ljava/lang/String;
    .param p2, "remoteFileName"    # Ljava/lang/String;
    .param p3, "remoteTargetDirectory"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "remoteFileName"    # Ljava/lang/String;
    .param p3, "remoteTargetDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const-string v0, "0600"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "remoteFileName"    # Ljava/lang/String;
    .param p3, "remoteTargetDirectory"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "Invalid mode."

    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, "sess":Lcom/odinnet/servermonitor/ssh/Session;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 501
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null argument."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 504
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 507
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 508
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 511
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 513
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scp -t -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/SCPClient;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/Connection;->openSession()Lcom/odinnet/servermonitor/ssh/Session;

    move-result-object v3

    .line 518
    invoke-virtual {v3, v0}, Lcom/odinnet/servermonitor/ssh/Session;->execCommand(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, v3, p1, p2, p4}, Lcom/odinnet/servermonitor/ssh/SCPClient;->sendBytes(Lcom/odinnet/servermonitor/ssh/Session;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    if-eqz v3, :cond_5

    .line 528
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    .line 530
    :cond_5
    return-void

    .line 511
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_6
    const-string v4, "."

    move-object p3, v4

    goto :goto_1

    .line 521
    .restart local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 523
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error during SCP transfer."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/SCPClient;
    check-cast p0, Ljava/io/IOException;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_7

    .line 528
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    :cond_7
    throw v4
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localFiles"    # [Ljava/lang/String;
    .param p2, "remoteTargetDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    const-string v0, "0600"

    invoke-virtual {p0, p1, p2, v0}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localFiles"    # [Ljava/lang/String;
    .param p2, "remoteTargetDirectory"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/odinnet/servermonitor/ssh/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "localFiles"    # [Ljava/lang/String;
    .param p2, "remoteFiles"    # [Ljava/lang/String;
    .param p3, "remoteTargetDirectory"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "Invalid mode."

    .line 553
    const/4 v3, 0x0

    .line 560
    .local v3, "sess":Lcom/odinnet/servermonitor/ssh/Session;
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 561
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null argument."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 564
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 566
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 567
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 566
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_4
    array-length v4, p1

    if-nez v4, :cond_6

    .line 599
    :cond_5
    :goto_1
    return-void

    .line 573
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 574
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 576
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scp -t -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 580
    aget-object v4, p1, v2

    if-nez v4, :cond_8

    .line 581
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot accept null filename."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 574
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_7
    const-string v4, "."

    move-object p3, v4

    goto :goto_2

    .line 578
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 586
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/SCPClient;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/Connection;->openSession()Lcom/odinnet/servermonitor/ssh/Session;

    move-result-object v3

    .line 587
    invoke-virtual {v3, v0}, Lcom/odinnet/servermonitor/ssh/Session;->execCommand(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, v3, p1, p2, p4}, Lcom/odinnet/servermonitor/ssh/SCPClient;->sendFiles(Lcom/odinnet/servermonitor/ssh/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v3, :cond_5

    .line 597
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    goto :goto_1

    .line 590
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 592
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error during SCP transfer."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/SCPClient;
    check-cast p0, Ljava/io/IOException;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_a

    .line 597
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    :cond_a
    throw v4
.end method

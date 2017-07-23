.class public Lcom/odinnet/servermonitor/ssh/KnownHosts;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    }
.end annotation


# static fields
.field public static final HOSTKEY_HAS_CHANGED:I = 0x2

.field public static final HOSTKEY_IS_NEW:I = 0x1

.field public static final HOSTKEY_IS_OK:I


# instance fields
.field private publicKeys:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "knownHosts"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 77
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->initialize(Ljava/io/File;)V

    .line 78
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "knownHostsData"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 72
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->initialize([C)V

    .line 73
    return-void
.end method

.method public static final addHostkeyToFile(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .param p0, "knownHosts"    # Ljava/io/File;
    .param p1, "hostnames"    # [Ljava/lang/String;
    .param p2, "serverHostKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "serverHostKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v9, 0xa

    .line 661
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 662
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Need at least one hostname specification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 664
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 665
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 667
    :cond_3
    new-instance v6, Ljava/io/CharArrayWriter;

    invoke-direct {v6}, Ljava/io/CharArrayWriter;-><init>()V

    .line 669
    .local v6, "writer":Ljava/io/CharArrayWriter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_5

    .line 671
    if-eqz v1, :cond_4

    .line 672
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 673
    :cond_4
    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_5
    invoke-virtual {v6, v8}, Ljava/io/CharArrayWriter;->write(I)V

    .line 677
    invoke-virtual {v6, p2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v6, v8}, Ljava/io/CharArrayWriter;->write(I)V

    .line 679
    invoke-static {p3}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->encode([B)[C

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write([C)V

    .line 680
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v6}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    .line 684
    .local v0, "entry":[C
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v5, p0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 686
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 688
    .local v3, "len":J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_6

    .line 690
    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 691
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 692
    .local v2, "last":I
    if-eq v2, v9, :cond_6

    .line 693
    invoke-virtual {v5, v9}, Ljava/io/RandomAccessFile;->write(I)V

    .line 696
    .end local v2    # "last":I
    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 697
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 698
    return-void
.end method

.method private final checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 191
    const-string v9, "|1|"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v11

    .line 226
    :goto_0
    return v9

    .line 194
    :cond_0
    const/16 v9, 0x7c

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 196
    .local v0, "delim_idx":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    move v9, v11

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "salt_base64":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "hash_base64":Ljava/lang/String;
    const/4 v6, 0x0

    .line 203
    .local v6, "salt":[B
    const/4 v3, 0x0

    .line 207
    .local v3, "hash":[B
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->decode([C)[B

    move-result-object v6

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->decode([C)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 215
    new-instance v8, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v8}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 217
    .local v8, "sha1":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    array-length v9, v6

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result v10

    if-eq v9, v10, :cond_2

    move v9, v11

    .line 218
    goto :goto_0

    .line 210
    .end local v8    # "sha1":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, "e":Ljava/io/IOException;
    move v9, v11

    .line 212
    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "sha1":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    :cond_2
    invoke-static {v6, p2}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object v1

    .line 222
    .local v1, "dig":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v1

    if-ge v5, v9, :cond_4

    .line 223
    aget-byte v9, v1, v5

    aget-byte v10, v3, v5

    if-eq v9, v10, :cond_3

    move v9, v11

    .line 224
    goto :goto_0

    .line 222
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    :cond_4
    const/4 v9, 0x1

    goto :goto_0
.end method

.method private checkKey(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 6
    .param p1, "remoteHostname"    # Ljava/lang/String;
    .param p2, "remoteKey"    # Ljava/lang/Object;

    .prologue
    .line 231
    const/4 v3, 0x1

    .line 233
    .local v3, "result":I
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v4

    .line 235
    :try_start_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;

    .line 241
    .local v1, "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    iget-object v5, v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    invoke-direct {p0, v5, p2}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 246
    .local v2, "res":Z
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 247
    const/4 v5, 0x0

    monitor-exit v4

    move v4, v5

    .line 252
    .end local v1    # "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    .end local v2    # "res":Z
    :goto_1
    return v4

    .line 249
    .restart local v1    # "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    .restart local v2    # "res":Z
    :cond_1
    const/4 v3, 0x2

    .line 250
    goto :goto_0

    .line 251
    .end local v1    # "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    .end local v2    # "res":Z
    :cond_2
    monitor-exit v4

    move v4, v3

    .line 252
    goto :goto_1

    .line 251
    .end local v0    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static final createBubblebabbleFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p0, "keytype"    # Ljava/lang/String;
    .param p1, "publickey"    # [B

    .prologue
    .line 841
    const-string v1, "sha1"

    invoke-static {v1, p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 842
    .local v0, "raw":[B
    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->rawToBubblebabbleFingerprint([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final createHashedHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 151
    .local v4, "sha1":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result v5

    new-array v3, v5, [B

    .line 153
    .local v3, "salt":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 155
    invoke-static {v3, p0}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object v2

    .line 157
    .local v2, "hash":[B
    new-instance v1, Ljava/lang/String;

    invoke-static {v3}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->encode([B)[C

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    .line 158
    .local v1, "base64_salt":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->encode([B)[C

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 160
    .local v0, "base64_hash":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|1|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v5
.end method

.method public static final createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p0, "keytype"    # Ljava/lang/String;
    .param p1, "publickey"    # [B

    .prologue
    .line 824
    const-string v1, "md5"

    invoke-static {v1, p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 825
    .local v0, "raw":[B
    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllKeys(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 259
    .local v2, "keys":Ljava/util/Vector;
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v3

    .line 261
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;

    .line 267
    .local v1, "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    iget-object v4, v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, v1, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "ke":Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    return-object v2
.end method

.method private static final hmacSha1Hash([BLjava/lang/String;)[B
    .locals 7
    .param p0, "salt"    # [B
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v3, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 167
    .local v3, "sha1":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    array-length v4, p0

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Salt has wrong length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_0
    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;

    array-length v4, p0

    invoke-direct {v1, v3, p0, v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;[BI)V

    .line 174
    .local v1, "hmac":Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->getDigestLength()I

    move-result v4

    new-array v0, v4, [B

    .line 184
    .local v0, "dig":[B
    invoke-virtual {v1, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->digest([B)V

    .line 186
    return-object v0

    .line 175
    .end local v0    # "dig":[B
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 179
    .local v2, "ignore":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->update([B)V

    goto :goto_0
.end method

.method private final hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "hostpatterns"    # [Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "isMatch":Z
    const/4 v2, 0x0

    .line 323
    .local v2, "negate":Z
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 325
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_a

    .line 327
    aget-object v4, p1, v1

    if-nez v4, :cond_1

    .line 325
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v3, 0x0

    .line 336
    .local v3, "pattern":Ljava/lang/String;
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    aget-object v4, p1, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_3

    .line 338
    aget-object v4, p1, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    const/4 v2, 0x1

    .line 349
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v2, :cond_0

    .line 354
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_5

    .line 356
    invoke-direct {p0, v3, p2}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    if-eqz v2, :cond_4

    move v4, v6

    .line 385
    .end local v3    # "pattern":Ljava/lang/String;
    :goto_3
    return v4

    .line 343
    .restart local v3    # "pattern":Ljava/lang/String;
    :cond_3
    aget-object v3, p1, v1

    .line 344
    const/4 v2, 0x0

    goto :goto_2

    .line 360
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 365
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 367
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v7, :cond_6

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v7, :cond_8

    .line 369
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {p0, v4, v6, v5, v6}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    if-eqz v2, :cond_7

    move v4, v6

    .line 372
    goto :goto_3

    .line 373
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 376
    :cond_8
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 378
    if-eqz v2, :cond_9

    move v4, v6

    .line 379
    goto :goto_3

    .line 380
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .end local v3    # "pattern":Ljava/lang/String;
    :cond_a
    move v4, v0

    .line 385
    goto :goto_3
.end method

.method private initialize(Ljava/io/File;)V
    .locals 5
    .param p1, "knownHosts"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/16 v4, 0x200

    new-array v0, v4, [C

    .line 424
    .local v0, "buff":[C
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 426
    .local v1, "cw":Ljava/io/CharArrayWriter;
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 428
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 432
    .local v2, "fr":Ljava/io/FileReader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 433
    .local v3, "len":I
    if-gez v3, :cond_0

    .line 438
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 440
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->initialize([C)V

    .line 441
    return-void

    .line 435
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0
.end method

.method private initialize([C)V
    .locals 8
    .param p1, "knownHostsData"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 390
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/CharArrayReader;

    invoke-direct {v5, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 418
    return-void

    .line 399
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 401
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 404
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "arr":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 408
    aget-object v5, v0, v7

    const-string v6, "ssh-rsa"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v0, v7

    const-string v6, "ssh-dss"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 410
    :cond_2
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "hostnames":[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->decode([C)[B

    move-result-object v4

    .line 414
    .local v4, "msg":[B
    aget-object v5, v0, v7

    invoke-virtual {p0, v2, v5, v4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private final matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 445
    instance-of v5, p1, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    if-eqz v5, :cond_2

    .line 447
    move-object v0, p1

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-object v4, v0

    .line 448
    .local v4, "savedRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    move-object v0, p2

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-object v2, v0

    .line 450
    .local v2, "remoteRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 479
    .end local v2    # "remoteRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .end local v4    # "savedRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :goto_0
    return v5

    .line 453
    .restart local v2    # "remoteRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .restart local v4    # "savedRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :cond_0
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 454
    goto :goto_0

    :cond_1
    move v5, v8

    .line 456
    goto :goto_0

    .line 459
    .end local v2    # "remoteRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .end local v4    # "savedRSAKey":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :cond_2
    instance-of v5, p1, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    if-eqz v5, :cond_7

    instance-of v5, p2, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    if-eqz v5, :cond_7

    .line 461
    move-object v0, p1

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-object v3, v0

    .line 462
    .local v3, "savedDSAKey":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    move-object v0, p2

    check-cast v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-object v1, v0

    .line 464
    .local v1, "remoteDSAKey":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    .line 465
    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v7

    .line 468
    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v7

    .line 471
    goto :goto_0

    .line 473
    :cond_5
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v7

    .line 474
    goto :goto_0

    :cond_6
    move v5, v8

    .line 476
    goto :goto_0

    .end local v1    # "remoteDSAKey":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .end local v3    # "savedDSAKey":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    :cond_7
    move v5, v7

    .line 479
    goto :goto_0
.end method

.method private final pseudoRegex([CI[CI)Z
    .locals 6
    .param p1, "pattern"    # [C
    .param p2, "i"    # I
    .param p3, "match"    # [C
    .param p4, "j"    # I

    .prologue
    const/16 v5, 0x3f

    const/16 v4, 0x2a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 490
    :goto_0
    array-length v0, p1

    if-ne v0, p2, :cond_1

    .line 491
    array-length v0, p3

    if-ne v0, p4, :cond_0

    move v0, v3

    .line 526
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 491
    goto :goto_1

    .line 493
    :cond_1
    aget-char v0, p1, p2

    if-ne v0, v4, :cond_7

    .line 495
    add-int/lit8 p2, p2, 0x1

    .line 497
    array-length v0, p1

    if-ne v0, p2, :cond_2

    move v0, v3

    .line 498
    goto :goto_1

    .line 500
    :cond_2
    aget-char v0, p1, p2

    if-eq v0, v4, :cond_5

    aget-char v0, p1, p2

    if-eq v0, v5, :cond_5

    .line 504
    :cond_3
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    if-ne v0, v1, :cond_4

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 505
    goto :goto_1

    .line 506
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 507
    array-length v0, p3

    if-ne v0, p4, :cond_3

    move v0, v2

    .line 508
    goto :goto_1

    .line 514
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 515
    goto :goto_1

    .line 516
    :cond_6
    add-int/lit8 p4, p4, 0x1

    .line 517
    array-length v0, p3

    if-ne v0, p4, :cond_5

    move v0, v2

    .line 518
    goto :goto_1

    .line 522
    :cond_7
    array-length v0, p3

    if-ne v0, p4, :cond_8

    move v0, v2

    .line 523
    goto :goto_1

    .line 525
    :cond_8
    aget-char v0, p1, p2

    if-eq v0, v5, :cond_9

    aget-char v0, p1, p2

    aget-char v1, p3, p4

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 526
    goto :goto_1

    .line 528
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 529
    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private static final rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "hostkey"    # [B

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, "dig":Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    const-string v2, "md5"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;

    .end local v0    # "dig":Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;-><init>()V

    .line 723
    .restart local v0    # "dig":Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    :goto_0
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    :cond_0
    if-nez p2, :cond_4

    .line 733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "hostkey is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 716
    :cond_1
    const-string v2, "sha1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    .end local v0    # "dig":Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .restart local v0    # "dig":Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    goto :goto_0

    .line 721
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown hash type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    :cond_3
    const-string v2, "ssh-dss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_4
    invoke-interface {v0, p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 736
    invoke-interface {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->getDigestLength()I

    move-result v2

    new-array v1, v2, [B

    .line 737
    .local v1, "res":[B
    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->digest([B)V

    .line 738
    return-object v1
.end method

.method private static final rawToBubblebabbleFingerprint([B)Ljava/lang/String;
    .locals 10
    .param p0, "raw"    # [B

    .prologue
    const/16 v9, 0x78

    .line 771
    const-string v6, "aeiouy"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 772
    .local v5, "v":[C
    const-string v6, "bcdfghklmnprstvzx"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 774
    .local v0, "c":[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 776
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .line 778
    .local v4, "seed":I
    array-length v6, p0

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v2, v6, 0x1

    .line 780
    .local v2, "rounds":I
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 784
    add-int/lit8 v6, v1, 0x1

    if-lt v6, v2, :cond_0

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 786
    :cond_0
    mul-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v5, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 787
    mul-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 788
    mul-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3

    div-int/lit8 v7, v4, 0x6

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v5, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 790
    add-int/lit8 v6, v1, 0x1

    if-ge v6, v2, :cond_1

    .line 792
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 793
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 794
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 796
    mul-int/lit8 v6, v4, 0x5

    mul-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v7, v7, 0x7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    rem-int/lit8 v4, v6, 0x24

    .line 782
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_2
    rem-int/lit8 v6, v4, 0x6

    aget-char v6, v5, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 802
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 803
    div-int/lit8 v6, v4, 0x6

    aget-char v6, v5, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 807
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 809
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static final rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5
    .param p0, "fingerprint"    # [B

    .prologue
    .line 748
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 750
    .local v0, "alpha":[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 752
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 754
    if-eqz v2, :cond_0

    .line 755
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 756
    :cond_0
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 757
    .local v1, "b":I
    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 758
    and-int/lit8 v4, v1, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v1    # "b":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "ssh-rsa"

    .line 535
    const/4 v2, 0x0

    .line 537
    .local v2, "preferredAlgo":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->getAllKeys(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 539
    .local v1, "keys":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 541
    const/4 v3, 0x0

    .line 543
    .local v3, "thisAlgo":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    if-eqz v4, :cond_0

    .line 544
    const-string v3, "ssh-rsa"

    .line 550
    :goto_1
    if-eqz v2, :cond_1

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v9

    .line 583
    .end local v3    # "thisAlgo":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 545
    .restart local v3    # "thisAlgo":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    if-eqz v4, :cond_1

    .line 546
    const-string v3, "ssh-dss"

    goto :goto_1

    .line 539
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    .end local v3    # "thisAlgo":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    move-object v4, v9

    .line 566
    goto :goto_2

    .line 580
    :cond_3
    const-string v4, "ssh-rsa"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 581
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "ssh-rsa"

    aput-object v6, v4, v7

    const-string v5, "ssh-dss"

    aput-object v5, v4, v8

    goto :goto_2

    .line 583
    :cond_4
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "ssh-dss"

    aput-object v5, v4, v7

    const-string v5, "ssh-rsa"

    aput-object v6, v4, v8

    goto :goto_2
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .param p1, "hostnames"    # [Ljava/lang/String;
    .param p2, "serverHostKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "serverHostKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "hostnames may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-static {p3}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-result-object v1

    .line 100
    .local v1, "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v4, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;

    invoke-direct {v4, p0, p1, v1}, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;-><init>(Lcom/odinnet/servermonitor/ssh/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v2

    .line 116
    .end local v1    # "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :goto_0
    return-void

    .line 103
    .restart local v1    # "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 105
    .end local v1    # "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    :cond_1
    const-string v2, "ssh-dss"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {p3}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-result-object v0

    .line 109
    .local v0, "dpk":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v2

    .line 111
    :try_start_1
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v4, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;

    invoke-direct {v4, p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/KnownHosts$KnownHostsEntry;-><init>(Lcom/odinnet/servermonitor/ssh/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 115
    .end local v0    # "dpk":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknwon host key type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addHostkeys(Ljava/io/File;)V
    .locals 0
    .param p1, "knownHosts"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->initialize(Ljava/io/File;)V

    .line 138
    return-void
.end method

.method public addHostkeys([C)V
    .locals 0
    .param p1, "knownHostsData"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->initialize([C)V

    .line 127
    return-void
.end method

.method public getPreferredServerHostkeyAlgorithmOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "algos":[Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 315
    :goto_0
    return-object v4

    .line 296
    :cond_0
    const/4 v3, 0x0

    .line 300
    .local v3, "ipAdresses":[Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 309
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 312
    goto :goto_0

    .line 302
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v4, v5

    .line 304
    goto :goto_0

    .line 307
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 315
    goto :goto_0
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "serverHostKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "serverHostKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    const/4 v4, 0x0

    .line 606
    .local v4, "remoteKey":Ljava/lang/Object;
    const-string v6, "ssh-rsa"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 608
    invoke-static {p3}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-result-object v4

    .line 617
    .end local v4    # "remoteKey":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v5

    .line 619
    .local v5, "result":I
    if-nez v5, :cond_2

    move v6, v5

    .line 644
    :goto_1
    return v6

    .line 610
    .end local v5    # "result":I
    .restart local v4    # "remoteKey":Ljava/lang/Object;
    :cond_0
    const-string v6, "ssh-dss"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 612
    invoke-static {p3}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-result-object v4

    .local v4, "remoteKey":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    goto :goto_0

    .line 615
    .local v4, "remoteKey":Ljava/lang/Object;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown hostkey type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 622
    .end local v4    # "remoteKey":Ljava/lang/Object;
    .restart local v5    # "result":I
    :cond_2
    const/4 v2, 0x0

    .line 626
    .local v2, "ipAdresses":[Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_5

    .line 635
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/odinnet/servermonitor/ssh/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 637
    .local v3, "newresult":I
    if-nez v3, :cond_3

    move v6, v3

    .line 638
    goto :goto_1

    .line 628
    .end local v1    # "i":I
    .end local v3    # "newresult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    move v6, v5

    .line 630
    goto :goto_1

    .line 640
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "i":I
    .restart local v3    # "newresult":I
    :cond_3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 641
    const/4 v5, 0x2

    .line 633
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "newresult":I
    :cond_5
    move v6, v5

    .line 644
    goto :goto_1
.end method

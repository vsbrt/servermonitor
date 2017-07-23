.class public final Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private currentLen:J

.field private currentPos:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    .line 23
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->reset()V

    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v11, 0x14

    const-string v14, "SHA-1 Test 3 OK."

    const-string v13, "SHA-1 Test 3 FAILED."

    .line 611
    new-instance v10, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v10}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 613
    .local v10, "sha":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    new-array v0, v11, [B

    .line 614
    .local v0, "dig1":[B
    new-array v3, v11, [B

    .line 615
    .local v3, "dig2":[B
    new-array v6, v11, [B

    .line 626
    .local v6, "dig3":[B
    const-string v11, "abc"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 627
    invoke-virtual {v10, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 629
    const-string v11, "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 630
    invoke-virtual {v10, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 632
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const v11, 0xf4240

    if-ge v9, v11, :cond_0

    .line 633
    const/16 v11, 0x61

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update(B)V

    .line 632
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v10, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 636
    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "dig1_res":Ljava/lang/String;
    invoke-static {v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "dig2_res":Ljava/lang/String;
    invoke-static {v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "dig3_res":Ljava/lang/String;
    const-string v1, "A9993E364706816ABA3E25717850C26C9CD0D89D"

    .line 641
    .local v1, "dig1_ref":Ljava/lang/String;
    const-string v4, "84983E441C3BD26EBAAE4AA1F95129E5E54670F1"

    .line 642
    .local v4, "dig2_ref":Ljava/lang/String;
    const-string v7, "34AA973CD4C4DAA4F61EEB2BDBAD27316534016F"

    .line 644
    .local v7, "dig3_ref":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 645
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 1 OK."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 650
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 2 OK."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 655
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 3 OK."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 660
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 3 OK."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    :goto_4
    return-void

    .line 647
    :cond_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 1 FAILED."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_2
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 2 FAILED."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 657
    :cond_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 3 FAILED."

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 662
    :cond_4
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "SHA-1 Test 3 FAILED."

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private final perform()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const v13, 0x6ed9eba1

    const v12, 0x5a827999

    const v11, -0x359d3e2a    # -3715189.5f

    const v10, -0x70e44324

    .line 242
    const/16 v5, 0x10

    .local v5, "t":I
    :goto_0
    const/16 v7, 0x50

    if-ge v5, v7, :cond_0

    .line 244
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    sub-int v8, v5, v14

    aget v7, v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x8

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xe

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x10

    sub-int v9, v5, v9

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 245
    .local v6, "x":I
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    shl-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v6, 0x1f

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "x":I
    :cond_0
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H0:I

    .line 249
    .local v0, "A":I
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H1:I

    .line 250
    .local v1, "B":I
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H2:I

    .line 251
    .local v2, "C":I
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H3:I

    .line 252
    .local v3, "D":I
    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H4:I

    .line 347
    .local v4, "E":I
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 348
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 350
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    xor-int/lit8 v9, v0, -0x1

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    .line 351
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 353
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v2, v7

    .line 354
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 356
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    xor-int/lit8 v9, v3, -0x1

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v8, v8, v14

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v1, v7

    .line 357
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 359
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    xor-int/lit8 v9, v2, -0x1

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x4

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v0, v7

    .line 360
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 362
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 363
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 365
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    xor-int/lit8 v9, v0, -0x1

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    .line 366
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 368
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v2, v7

    .line 369
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 371
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    xor-int/lit8 v9, v3, -0x1

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v1, v7

    .line 372
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 374
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    xor-int/lit8 v9, v2, -0x1

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v0, v7

    .line 375
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 377
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 378
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 380
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    xor-int/lit8 v9, v0, -0x1

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    .line 381
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 383
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v2, v7

    .line 384
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 386
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    xor-int/lit8 v9, v3, -0x1

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v1, v7

    .line 387
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 389
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    xor-int/lit8 v9, v2, -0x1

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v0, v7

    .line 390
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 392
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 393
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 395
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    xor-int/lit8 v9, v0, -0x1

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x10

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    .line 396
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 398
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x11

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v2, v7

    .line 399
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 401
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    xor-int/lit8 v9, v3, -0x1

    and-int/2addr v9, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x12

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v1, v7

    .line 402
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 404
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    xor-int/lit8 v9, v2, -0x1

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x13

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    add-int/2addr v0, v7

    .line 405
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 407
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x14

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v4, v7

    .line 408
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 410
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x15

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 411
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 413
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x16

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v2, v7

    .line 414
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 416
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x17

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v1, v7

    .line 417
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 419
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x18

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v0, v7

    .line 420
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 422
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x19

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v4, v7

    .line 423
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 425
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1a

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 426
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 428
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1b

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v2, v7

    .line 429
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 431
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1c

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v1, v7

    .line 432
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 434
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1d

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v0, v7

    .line 435
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 437
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1e

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v4, v7

    .line 438
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 440
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x1f

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 441
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 443
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x20

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v2, v7

    .line 444
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 446
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x21

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v1, v7

    .line 447
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 449
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x22

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v0, v7

    .line 450
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 452
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x23

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v4, v7

    .line 453
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 455
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x24

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 456
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 458
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x25

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v2, v7

    .line 459
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 461
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x26

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v1, v7

    .line 462
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 464
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x27

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    add-int/2addr v0, v7

    .line 465
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 467
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x28

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 468
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 470
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x29

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    .line 471
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 473
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2a

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v2, v7

    .line 474
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 476
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2b

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v1, v7

    .line 477
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 479
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2c

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v0, v7

    .line 480
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 482
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2d

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 483
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 485
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2e

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    .line 486
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 488
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x2f

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v2, v7

    .line 489
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 491
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x30

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v1, v7

    .line 492
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 494
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x31

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v0, v7

    .line 495
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 497
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x32

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 498
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 500
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x33

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    .line 501
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 503
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x34

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v2, v7

    .line 504
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 506
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x35

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v1, v7

    .line 507
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 509
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x36

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v0, v7

    .line 510
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 512
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    add-int/2addr v7, v4

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x37

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int v4, v7, v10

    .line 513
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 515
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    and-int v8, v0, v1

    and-int v9, v0, v2

    or-int/2addr v8, v9

    and-int v9, v1, v2

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x38

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    .line 516
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 518
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    and-int v8, v4, v0

    and-int v9, v4, v1

    or-int/2addr v8, v9

    and-int v9, v0, v1

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x39

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v2, v7

    .line 519
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 521
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    and-int v8, v3, v4

    and-int v9, v3, v0

    or-int/2addr v8, v9

    and-int v9, v4, v0

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3a

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v1, v7

    .line 522
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 524
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    and-int v8, v2, v3

    and-int v9, v2, v4

    or-int/2addr v8, v9

    and-int v9, v3, v4

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3b

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v0, v7

    .line 525
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 527
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3c

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v4, v7

    .line 528
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 530
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3d

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 531
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 533
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3e

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v2, v7

    .line 534
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 536
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x3f

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v1, v7

    .line 537
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 539
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x40

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v0, v7

    .line 540
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 542
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x41

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v4, v7

    .line 543
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 545
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x42

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 546
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 548
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x43

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v2, v7

    .line 549
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 551
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x44

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v1, v7

    .line 552
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 554
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x45

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v0, v7

    .line 555
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 557
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x46

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v4, v7

    .line 558
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 560
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x47

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 561
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 563
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x48

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v2, v7

    .line 564
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 566
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x49

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v1, v7

    .line 567
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 569
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4a

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v0, v7

    .line 570
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 572
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4b

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v4, v7

    .line 573
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 575
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v0, v1

    xor-int/2addr v8, v2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4c

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 576
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 578
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v4, v0

    xor-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4d

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v2, v7

    .line 579
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 581
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v3, v4

    xor-int/2addr v8, v0

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4e

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v1, v7

    .line 582
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 584
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v2, v3

    xor-int/2addr v8, v4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    const/16 v9, 0x4f

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/2addr v0, v7

    .line 585
    shl-int/lit8 v7, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v7, v8

    .line 587
    iget v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H0:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H0:I

    .line 588
    iget v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H1:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H1:I

    .line 589
    iget v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H2:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H2:I

    .line 590
    iget v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H3:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H3:I

    .line 591
    iget v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H4:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H4:I

    .line 594
    return-void
.end method

.method private final putInt([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "pos"    # I
    .param p3, "val"    # I

    .prologue
    .line 186
    shr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 187
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 188
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 189
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    .line 190
    return-void
.end method

.method private static final toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const-string v4, "0123456789ABCDEF"

    .line 598
    const-string v0, "0123456789ABCDEF"

    .line 600
    .local v0, "hexChar":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 601
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 603
    const-string v3, "0123456789ABCDEF"

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    const-string v3, "0123456789ABCDEF"

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final digest([B)V
    .locals 1
    .param p1, "out"    # [B

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([BI)V

    .line 195
    return-void
.end method

.method public final digest([BI)V
    .locals 9
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xe

    const/4 v6, 0x0

    .line 201
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v1, v2, 0x2

    .line 202
    .local v1, "idx":I
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v3, v3, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/lit16 v3, v3, 0x80

    const/4 v4, 0x3

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    and-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    aput v3, v2, v1

    .line 204
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    and-int/lit8 v2, v2, -0x4

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 206
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 208
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 209
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 223
    :cond_0
    :goto_0
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v2, 0x2

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 224
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aput v6, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    .line 213
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 214
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aput v6, v2, v8

    .line 215
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    goto :goto_0

    .line 226
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-wide v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    aput v3, v2, v7

    .line 227
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-wide v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    long-to-int v3, v3

    aput v3, v2, v8

    .line 229
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 231
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->putInt([BII)V

    .line 232
    add-int/lit8 v2, p2, 0x4

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H1:I

    invoke-direct {p0, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->putInt([BII)V

    .line 233
    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H2:I

    invoke-direct {p0, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->putInt([BII)V

    .line 234
    add-int/lit8 v2, p2, 0xc

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H3:I

    invoke-direct {p0, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->putInt([BII)V

    .line 235
    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H4:I

    invoke-direct {p0, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->putInt([BII)V

    .line 237
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->reset()V

    .line 238
    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x67452301

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H0:I

    .line 34
    const v0, -0x10325477

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H1:I

    .line 35
    const v0, -0x67452302

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H2:I

    .line 36
    const v0, 0x10325476

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H3:I

    .line 37
    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->H4:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 44
    return-void
.end method

.method public final update(B)V
    .locals 5
    .param p1, "b"    # B

    .prologue
    .line 171
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v1, 0x2

    .line 172
    .local v0, "idx":I
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, p1, 0xff

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 174
    iget-wide v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 175
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 177
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 182
    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([BII)V

    .line 49
    return-void
.end method

.method public final update([BII)V
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const-wide/16 v10, 0x20

    const-wide/16 v8, 0x8

    const/16 v7, 0x40

    const/4 v6, 0x0

    .line 53
    const/4 v2, 0x4

    if-lt p3, v2, :cond_8

    .line 55
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v2, 0x2

    .line 57
    .local v0, "idx":I
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v1, p2

    .line 107
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_1
    :goto_0
    const/16 v2, 0x8

    if-lt p3, v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 111
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 113
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 116
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 122
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 124
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 127
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 130
    :cond_3
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v4, 0x40

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 131
    add-int/lit8 p3, p3, -0x8

    goto :goto_0

    .line 60
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :pswitch_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 61
    add-int/lit8 p3, p3, -0x4

    .line 62
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 63
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 64
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 67
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto/16 :goto_0

    .line 71
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :pswitch_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 72
    add-int/lit8 p3, p3, -0x3

    .line 73
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 74
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v4, 0x18

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 75
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 78
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 82
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :pswitch_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 83
    add-int/lit8 p3, p3, -0x2

    .line 84
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 85
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 86
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 89
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto/16 :goto_0

    .line 93
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :pswitch_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 94
    add-int/lit8 p3, p3, -0x1

    .line 95
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 96
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 97
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 100
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 134
    :cond_4
    :goto_1
    if-gez p3, :cond_5

    .line 136
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 138
    add-int/lit8 p3, p3, -0x4

    .line 139
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 140
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 141
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 144
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    goto :goto_1

    .line 151
    .end local v0    # "idx":I
    :cond_5
    :goto_2
    if-lez p3, :cond_7

    .line 154
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v2, 0x2

    .line 155
    .restart local v0    # "idx":I
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->w:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 157
    iget-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentLen:J

    .line 158
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 160
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    if-ne v2, v7, :cond_6

    .line 162
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->perform()V

    .line 163
    iput v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->currentPos:I

    .line 165
    :cond_6
    add-int/lit8 p3, p3, -0x1

    move v1, p2

    .line 166
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_2

    .line 167
    .end local v0    # "idx":I
    :cond_7
    return-void

    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_8
    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_2

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

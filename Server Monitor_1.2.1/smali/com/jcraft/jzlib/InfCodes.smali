.class final Lcom/jcraft/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final inflate_mask:[I


# instance fields
.field dbits:B

.field dist:I

.field dtree:[I

.field dtree_index:I

.field get:I

.field lbits:B

.field len:I

.field lit:I

.field ltree:[I

.field ltree_index:I

.field mode:I

.field need:I

.field tree:[I

.field tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 93
    return-void
.end method


# virtual methods
.method free(Lcom/jcraft/jzlib/ZStream;)V
    .locals 0
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    .line 394
    return-void
.end method

.method inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I
    .locals 28
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I
    .param p7, "s"    # Lcom/jcraft/jzlib/InfBlocks;
    .param p8, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    .line 424
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v14, v0

    .local v14, "p":I
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move v13, v0

    .local v13, "n":I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v5, v0

    .local v5, "b":I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move v9, v0

    .line 425
    .local v9, "k":I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    .local v16, "q":I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move/from16 v10, v24

    .line 428
    .local v10, "m":I
    :goto_0
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v24, p1

    .line 429
    .local v12, "ml":I
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v11, v24, p2

    .local v11, "md":I
    move/from16 v17, v16

    .end local v16    # "q":I
    .local v17, "q":I
    move v15, v14

    .line 434
    .end local v14    # "p":I
    .local v15, "p":I
    :goto_1
    const/16 v24, 0x14

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 435
    add-int/lit8 v13, v13, -0x1

    .line 436
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_1

    .line 425
    .end local v10    # "m":I
    .end local v11    # "md":I
    .end local v12    # "ml":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v14    # "p":I
    .restart local v16    # "q":I
    :cond_0
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    move/from16 v10, v24

    goto :goto_0

    .line 439
    .end local v14    # "p":I
    .end local v16    # "q":I
    .restart local v10    # "m":I
    .restart local v11    # "md":I
    .restart local v12    # "ml":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_1
    and-int v20, v5, v12

    .line 440
    .local v20, "t":I
    move-object/from16 v21, p3

    .line 441
    .local v21, "tp":[I
    move/from16 v22, p4

    .line 442
    .local v22, "tp_index":I
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 443
    .local v23, "tp_index_t_3":I
    aget v8, v21, v23

    .local v8, "e":I
    if-nez v8, :cond_4

    .line 444
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 446
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "q":I
    .restart local v16    # "q":I
    add-int/lit8 v25, v23, 0x2

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v24, v17

    .line 447
    add-int/lit8 v10, v10, -0x1

    move v14, v15

    .line 594
    .end local v15    # "p":I
    .restart local v14    # "p":I
    :goto_2
    const/16 v24, 0x102

    move v0, v10

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    const/16 v24, 0xa

    move v0, v13

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 597
    :cond_2
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .local v6, "c":I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_3

    shr-int/lit8 v24, v9, 0x3

    move/from16 v6, v24

    :cond_3
    add-int/2addr v13, v6

    sub-int/2addr v14, v6

    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 599
    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v0, v9

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 600
    move v0, v13

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move v0, v14

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 601
    move/from16 v0, v16

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 603
    const/16 v24, 0x0

    :goto_3
    return v24

    .line 452
    .end local v6    # "c":I
    .end local v14    # "p":I
    .end local v16    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_4
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 454
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_f

    .line 455
    and-int/lit8 v8, v8, 0xf

    .line 456
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    sget-object v25, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v8

    and-int v25, v25, v5

    add-int v6, v24, v25

    .line 458
    .restart local v6    # "c":I
    shr-int/2addr v5, v8

    sub-int/2addr v9, v8

    .line 461
    :goto_4
    const/16 v24, 0xf

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 462
    add-int/lit8 v13, v13, -0x1

    .line 463
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_4

    .line 466
    :cond_5
    and-int v20, v5, v11

    .line 467
    move-object/from16 v21, p5

    .line 468
    move/from16 v22, p6

    .line 469
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 470
    aget v8, v21, v23

    .line 474
    :goto_5
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 476
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_c

    .line 478
    and-int/lit8 v8, v8, 0xf

    .line 479
    :goto_6
    if-ge v9, v8, :cond_6

    .line 480
    add-int/lit8 v13, v13, -0x1

    .line 481
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v24, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int v24, v24, v9

    or-int v5, v5, v24

    add-int/lit8 v9, v9, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_6

    .line 484
    :cond_6
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    sget-object v25, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v8

    and-int v25, v25, v5

    add-int v7, v24, v25

    .line 486
    .local v7, "d":I
    shr-int/2addr v5, v8

    sub-int/2addr v9, v8

    .line 489
    sub-int/2addr v10, v6

    .line 490
    move/from16 v0, v17

    move v1, v7

    if-lt v0, v1, :cond_8

    .line 492
    sub-int v18, v17, v7

    .line 493
    .local v18, "r":I
    sub-int v24, v17, v18

    if-lez v24, :cond_7

    const/16 v24, 0x2

    sub-int v25, v17, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 494
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "q":I
    .restart local v16    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "r":I
    .local v19, "r":I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v17

    .line 495
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "r":I
    .restart local v18    # "r":I
    aget-byte v25, v25, v19

    aput-byte v25, v24, v16

    .line 496
    add-int/lit8 v6, v6, -0x2

    move/from16 v16, v17

    .line 525
    .end local v17    # "q":I
    .restart local v16    # "q":I
    :goto_7
    sub-int v24, v16, v18

    if-lez v24, :cond_b

    sub-int v24, v16, v18

    move v0, v6

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 526
    :goto_8
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "r":I
    .restart local v19    # "r":I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v16

    .line 527
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_15

    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_2

    .line 499
    .end local v14    # "p":I
    .end local v16    # "q":I
    .end local v19    # "r":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    .restart local v18    # "r":I
    :cond_7
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v17

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    add-int/lit8 v16, v17, 0x2

    .end local v17    # "q":I
    .restart local v16    # "q":I
    add-int/lit8 v18, v18, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_7

    .line 504
    .end local v16    # "q":I
    .end local v18    # "r":I
    .restart local v17    # "q":I
    :cond_8
    sub-int v18, v17, v7

    .line 506
    .restart local v18    # "r":I
    :cond_9
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    add-int v18, v18, v24

    .line 507
    if-ltz v18, :cond_9

    .line 508
    move-object/from16 v0, p7

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v24, v0

    sub-int v8, v24, v18

    .line 509
    if-le v6, v8, :cond_17

    .line 510
    sub-int/2addr v6, v8

    .line 511
    sub-int v24, v17, v18

    if-lez v24, :cond_a

    sub-int v24, v17, v18

    move v0, v8

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    move/from16 v16, v17

    .line 512
    .end local v17    # "q":I
    .restart local v16    # "q":I
    :goto_9
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "r":I
    .restart local v19    # "r":I
    aget-byte v25, v25, v18

    aput-byte v25, v24, v16

    .line 513
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_16

    move/from16 v18, v19

    .end local v19    # "r":I
    .restart local v18    # "r":I
    move/from16 v16, v17

    .line 519
    .end local v17    # "q":I
    .restart local v16    # "q":I
    :goto_a
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 516
    .end local v16    # "q":I
    .restart local v17    # "q":I
    :cond_a
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v17

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    add-int v16, v17, v8

    .end local v17    # "q":I
    .restart local v16    # "q":I
    add-int v18, v18, v8

    const/4 v8, 0x0

    goto :goto_a

    .line 530
    :cond_b
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v16

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    add-int v16, v16, v6

    add-int v18, v18, v6

    const/4 v6, 0x0

    move v14, v15

    .line 533
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_2

    .line 535
    .end local v7    # "d":I
    .end local v14    # "p":I
    .end local v16    # "q":I
    .end local v18    # "r":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_c
    and-int/lit8 v24, v8, 0x40

    if-nez v24, :cond_d

    .line 536
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    add-int v20, v20, v24

    .line 537
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v24, v24, v8

    and-int v24, v24, v5

    add-int v20, v20, v24

    .line 538
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 539
    aget v8, v21, v23

    goto/16 :goto_5

    .line 542
    :cond_d
    const-string v24, "invalid distance code"

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 544
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_e

    shr-int/lit8 v24, v9, 0x3

    move/from16 v6, v24

    :cond_e
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15    # "p":I
    .restart local v14    # "p":I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 546
    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v0, v9

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 547
    move v0, v13

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move v0, v14

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 548
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 550
    const/16 v24, -0x3

    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_3

    .line 557
    .end local v6    # "c":I
    .end local v14    # "p":I
    .end local v16    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_f
    and-int/lit8 v24, v8, 0x40

    if-nez v24, :cond_10

    .line 558
    add-int/lit8 v24, v23, 0x2

    aget v24, v21, v24

    add-int v20, v20, v24

    .line 559
    sget-object v24, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v24, v24, v8

    and-int v24, v24, v5

    add-int v20, v20, v24

    .line 560
    add-int v24, v22, v20

    mul-int/lit8 v23, v24, 0x3

    .line 561
    aget v8, v21, v23

    if-nez v8, :cond_4

    .line 563
    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    shr-int v5, v5, v24

    add-int/lit8 v24, v23, 0x1

    aget v24, v21, v24

    sub-int v9, v9, v24

    .line 565
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "q":I
    .restart local v16    # "q":I
    add-int/lit8 v25, v23, 0x2

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v24, v17

    .line 566
    add-int/lit8 v10, v10, -0x1

    move v14, v15

    .line 567
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_2

    .line 570
    .end local v14    # "p":I
    .end local v16    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_10
    and-int/lit8 v24, v8, 0x20

    if-eqz v24, :cond_12

    .line 572
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .restart local v6    # "c":I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_11

    shr-int/lit8 v24, v9, 0x3

    move/from16 v6, v24

    :cond_11
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15    # "p":I
    .restart local v14    # "p":I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 574
    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v0, v9

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 575
    move v0, v13

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move v0, v14

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 576
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 578
    const/16 v24, 0x1

    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_3

    .line 581
    .end local v6    # "c":I
    .end local v14    # "p":I
    .end local v16    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_12
    const-string v24, "invalid literal/length code"

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v24, v0

    sub-int v6, v24, v13

    .restart local v6    # "c":I
    shr-int/lit8 v24, v9, 0x3

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_13

    shr-int/lit8 v24, v9, 0x3

    move/from16 v6, v24

    :cond_13
    add-int/2addr v13, v6

    sub-int v14, v15, v6

    .end local v15    # "p":I
    .restart local v14    # "p":I
    shl-int/lit8 v24, v6, 0x3

    sub-int v9, v9, v24

    .line 585
    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v0, v9

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 586
    move v0, v13

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    sub-int v26, v14, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move v0, v14

    move-object/from16 v1, p8

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 587
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 589
    const/16 v24, -0x3

    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_3

    .end local v6    # "c":I
    :cond_14
    move/from16 v17, v16

    .end local v16    # "q":I
    .restart local v17    # "q":I
    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_1

    .restart local v6    # "c":I
    .restart local v7    # "d":I
    .restart local v19    # "r":I
    :cond_15
    move/from16 v18, v19

    .end local v19    # "r":I
    .restart local v18    # "r":I
    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_8

    .end local v16    # "q":I
    .end local v18    # "r":I
    .restart local v17    # "q":I
    .restart local v19    # "r":I
    :cond_16
    move/from16 v18, v19

    .end local v19    # "r":I
    .restart local v18    # "r":I
    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_9

    .end local v16    # "q":I
    .restart local v17    # "q":I
    :cond_17
    move/from16 v16, v17

    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_7
.end method

.method init(II[II[IILcom/jcraft/jzlib/ZStream;)V
    .locals 1
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I
    .param p7, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 98
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    .line 99
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    .line 100
    iput-object p3, p0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    .line 101
    iput p4, p0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    .line 102
    iput-object p5, p0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    .line 103
    iput p6, p0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 105
    return-void
.end method

.method proc(Lcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;I)I
    .locals 25
    .param p1, "s"    # Lcom/jcraft/jzlib/InfBlocks;
    .param p2, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p3, "r"    # I

    .prologue
    .line 112
    const/4 v12, 0x0

    .line 113
    .local v12, "b":I
    const/16 v17, 0x0

    .line 114
    .local v17, "k":I
    const/16 v20, 0x0

    .line 121
    .local v20, "p":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    .local v19, "n":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v17, v0

    .line 122
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v22, v0

    .local v22, "q":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 126
    .local v18, "m":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 382
    const/16 p3, -0x2

    .line 384
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 385
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 386
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 387
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    :goto_1
    return v3

    .line 122
    .end local v18    # "m":I
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_0

    .line 129
    .restart local v18    # "m":I
    :pswitch_0
    const/16 v3, 0x102

    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_3

    const/16 v3, 0xa

    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_3

    .line 131
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 132
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 133
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 134
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move v9, v0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v3 .. v11}, Lcom/jcraft/jzlib/InfCodes;->inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I

    move-result p3

    .line 139
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v17, v0

    .line 140
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 142
    :goto_2
    if-eqz p3, :cond_3

    .line 143
    const/4 v3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_2

    const/4 v3, 0x7

    :goto_3
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 140
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_2

    .line 143
    :cond_2
    const/16 v3, 0x9

    goto :goto_3

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 151
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 153
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    move/from16 v16, v0

    .local v16, "j":I
    move/from16 v21, v20

    .line 155
    .end local v20    # "p":I
    .local v21, "p":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 156
    if-eqz v19, :cond_4

    const/16 p3, 0x0

    .line 164
    add-int/lit8 v19, v19, -0x1

    .line 165
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object v3, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-byte v3, v3, v21

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v17

    or-int/2addr v12, v3

    .line 166
    add-int/lit8 v17, v17, 0x8

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_4

    .line 159
    :cond_4
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 160
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 161
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 162
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 169
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move v3, v0

    sget-object v4, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v4, v4, v16

    and-int/2addr v4, v12

    add-int/2addr v3, v4

    mul-int/lit8 v24, v3, 0x3

    .line 171
    .local v24, "tindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x1

    aget v3, v3, v4

    ushr-int/2addr v12, v3

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x1

    aget v3, v3, v4

    sub-int v17, v17, v3

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    aget v13, v3, v24

    .line 176
    .local v13, "e":I
    if-nez v13, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x2

    aget v3, v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->lit:I

    .line 178
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 179
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 181
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_6
    and-int/lit8 v3, v13, 0x10

    if-eqz v3, :cond_7

    .line 182
    and-int/lit8 v3, v13, 0xf

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x2

    aget v3, v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 184
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 185
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 187
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_7
    and-int/lit8 v3, v13, 0x40

    if-nez v3, :cond_8

    .line 188
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 189
    div-int/lit8 v3, v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v4, v0

    add-int/lit8 v5, v24, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v20, v21

    .line 190
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 192
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_8
    and-int/lit8 v3, v13, 0x20

    if-eqz v3, :cond_9

    .line 193
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 194
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 196
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_9
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 197
    const-string v3, "invalid literal/length code"

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 198
    const/16 p3, -0x3

    .line 200
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 201
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 202
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 203
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 206
    .end local v13    # "e":I
    .end local v16    # "j":I
    .end local v24    # "tindex":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    move/from16 v16, v0

    .restart local v16    # "j":I
    move/from16 v21, v20

    .line 208
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 209
    if-eqz v19, :cond_a

    const/16 p3, 0x0

    .line 217
    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object v3, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-byte v3, v3, v21

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v17

    or-int/2addr v12, v3

    .line 218
    add-int/lit8 v17, v17, 0x8

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_5

    .line 212
    :cond_a
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 213
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 221
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move v3, v0

    sget-object v4, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v4, v4, v16

    and-int/2addr v4, v12

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 223
    shr-int v12, v12, v16

    .line 224
    sub-int v17, v17, v16

    .line 226
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 229
    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 231
    .end local v16    # "j":I
    .end local v21    # "p":I
    .restart local v20    # "p":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    move/from16 v16, v0

    .restart local v16    # "j":I
    move/from16 v21, v20

    .line 233
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    .line 234
    if-eqz v19, :cond_c

    const/16 p3, 0x0

    .line 242
    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object v3, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-byte v3, v3, v21

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v17

    or-int/2addr v12, v3

    .line 243
    add-int/lit8 v17, v17, 0x8

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_6

    .line 237
    :cond_c
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 238
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 239
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 240
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 246
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move v3, v0

    sget-object v4, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v4, v4, v16

    and-int/2addr v4, v12

    add-int/2addr v3, v4

    mul-int/lit8 v24, v3, 0x3

    .line 248
    .restart local v24    # "tindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x1

    aget v3, v3, v4

    shr-int/2addr v12, v3

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x1

    aget v3, v3, v4

    sub-int v17, v17, v3

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    aget v13, v3, v24

    .line 252
    .restart local v13    # "e":I
    and-int/lit8 v3, v13, 0x10

    if-eqz v3, :cond_e

    .line 253
    and-int/lit8 v3, v13, 0xf

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v3, v0

    add-int/lit8 v4, v24, 0x2

    aget v3, v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 255
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 256
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 258
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_e
    and-int/lit8 v3, v13, 0x40

    if-nez v3, :cond_f

    .line 259
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 260
    div-int/lit8 v3, v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object v4, v0

    add-int/lit8 v5, v24, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v20, v21

    .line 261
    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_0

    .line 263
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_f
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 264
    const-string v3, "invalid distance code"

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 265
    const/16 p3, -0x3

    .line 267
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 268
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 269
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 270
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 273
    .end local v13    # "e":I
    .end local v16    # "j":I
    .end local v24    # "tindex":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    move/from16 v16, v0

    .restart local v16    # "j":I
    move/from16 v21, v20

    .line 275
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 276
    if-eqz v19, :cond_10

    const/16 p3, 0x0

    .line 284
    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object v3, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-byte v3, v3, v21

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v17

    or-int/2addr v12, v3

    .line 285
    add-int/lit8 v17, v17, 0x8

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_7

    .line 279
    :cond_10
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 280
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v21, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 281
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 282
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_1

    .line 288
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    move v3, v0

    sget-object v4, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v4, v4, v16

    and-int/2addr v4, v12

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 290
    shr-int v12, v12, v16

    .line 291
    sub-int v17, v17, v16

    .line 293
    const/4 v3, 0x5

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v20, v21

    .line 295
    .end local v16    # "j":I
    .end local v21    # "p":I
    .restart local v20    # "p":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    move v3, v0

    sub-int v14, v22, v3

    .line 296
    .local v14, "f":I
    :goto_8
    if-gez v14, :cond_13

    .line 297
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    add-int/2addr v14, v3

    goto :goto_8

    .line 318
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object v3, v0

    add-int/lit8 v23, v22, 0x1

    .end local v22    # "q":I
    .local v23, "q":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object v4, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "f":I
    .local v15, "f":I
    aget-byte v4, v4, v14

    aput-byte v4, v3, v22

    add-int/lit8 v18, v18, -0x1

    .line 320
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    if-ne v15, v3, :cond_23

    .line 321
    const/4 v14, 0x0

    .line 322
    .end local v15    # "f":I
    .restart local v14    # "f":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v22, v23

    .line 299
    .end local v23    # "q":I
    .restart local v22    # "q":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move v3, v0

    if-eqz v3, :cond_19

    .line 301
    if-nez v18, :cond_12

    .line 302
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    if-eqz v3, :cond_14

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 303
    :cond_14
    :goto_a
    if-nez v18, :cond_12

    .line 304
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 305
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 307
    :goto_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    if-eqz v3, :cond_15

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 309
    :cond_15
    :goto_c
    if-nez v18, :cond_12

    .line 310
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 311
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 312
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 313
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_1

    .line 302
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto/16 :goto_a

    .line 305
    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_b

    .line 307
    :cond_18
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_c

    .line 324
    :cond_19
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 327
    .end local v14    # "f":I
    :pswitch_6
    if-nez v18, :cond_1f

    .line 328
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    if-eqz v3, :cond_1a

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 329
    :cond_1a
    :goto_d
    if-nez v18, :cond_1f

    .line 330
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 331
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 333
    :goto_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    if-eqz v3, :cond_1b

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 334
    :cond_1b
    :goto_f
    if-nez v18, :cond_1f

    .line 335
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 336
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 337
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 338
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_1

    .line 328
    :cond_1c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto/16 :goto_d

    .line 331
    :cond_1d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_e

    .line 333
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_f

    .line 342
    :cond_1f
    const/16 p3, 0x0

    .line 344
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object v3, v0

    add-int/lit8 v23, v22, 0x1

    .end local v22    # "q":I
    .restart local v23    # "q":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->lit:I

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v3, v22

    add-int/lit8 v18, v18, -0x1

    .line 346
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v22, v23

    .line 347
    .end local v23    # "q":I
    .restart local v22    # "q":I
    goto/16 :goto_0

    .line 349
    :pswitch_7
    const/4 v3, 0x7

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_20

    .line 350
    add-int/lit8 v17, v17, -0x8

    .line 351
    add-int/lit8 v19, v19, 0x1

    .line 352
    add-int/lit8 v20, v20, -0x1

    .line 355
    :cond_20
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 356
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    sub-int v3, v3, v22

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v18, v3

    .line 358
    :goto_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move v4, v0

    if-eq v3, v4, :cond_22

    .line 359
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 360
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 361
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 362
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_1

    .line 356
    :cond_21
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move v3, v0

    sub-int v3, v3, v22

    move/from16 v18, v3

    goto :goto_10

    .line 364
    :cond_22
    const/16 v3, 0x8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 366
    :pswitch_8
    const/16 p3, 0x1

    .line 367
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 368
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 369
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 370
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_1

    .line 374
    :pswitch_9
    const/16 p3, -0x3

    .line 376
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 377
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move v5, v0

    sub-int v5, v20, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 378
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 379
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_1

    .end local v22    # "q":I
    .restart local v15    # "f":I
    .restart local v23    # "q":I
    :cond_23
    move v14, v15

    .end local v15    # "f":I
    .restart local v14    # "f":I
    goto/16 :goto_9

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

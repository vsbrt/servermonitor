.class final Lcom/jcraft/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field private static final BL_CODES:I = 0x13

.field static final Buf_size:I = 0x10

.field static final DIST_CODE_LEN:I = 0x200

.field private static final D_CODES:I = 0x1e

.field static final END_BLOCK:I = 0x100

.field private static final HEAP_SIZE:I = 0x23d

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static final REPZ_11_138:I = 0x12

.field static final REPZ_3_10:I = 0x11

.field static final REP_3_6:I = 0x10

.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lcom/jcraft/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0x1d

    const/16 v1, 0x13

    .line 62
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 89
    const/16 v0, 0x200

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 118
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 134
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 139
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    .line 72
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    .line 76
    :array_3
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    .line 89
    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    .line 118
    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    .line 134
    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    .line 139
    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bi_reverse(II)I
    .locals 2
    .param p0, "code"    # I
    .param p1, "len"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "res":I
    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 358
    ushr-int/lit8 p0, p0, 0x1

    .line 359
    shl-int/lit8 v0, v0, 0x1

    .line 361
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    .line 362
    ushr-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static d_code(I)I
    .locals 2
    .param p0, "dist"    # I

    .prologue
    .line 149
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 v1, p0, 0x7

    add-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method static gen_codes([SI[S)V
    .locals 8
    .param p0, "tree"    # [S
    .param p1, "max_code"    # I
    .param p2, "bl_count"    # [S

    .prologue
    .line 324
    const/16 v5, 0x10

    new-array v4, v5, [S

    .line 325
    .local v4, "next_code":[S
    const/4 v1, 0x0

    .line 331
    .local v1, "code":S
    const/4 v0, 0x1

    .local v0, "bits":I
    :goto_0
    const/16 v5, 0xf

    if-gt v0, v5, :cond_0

    .line 332
    const/4 v5, 0x1

    sub-int v5, v0, v5

    aget-short v5, p2, v5

    add-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x1

    int-to-short v1, v5

    aput-short v1, v4, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-gt v3, p1, :cond_2

    .line 342
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v2, p0, v5

    .line 343
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 341
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_1
    mul-int/lit8 v5, v3, 0x2

    aget-short v6, v4, v2

    add-int/lit8 v7, v6, 0x1

    int-to-short v7, v7

    aput-short v7, v4, v2

    invoke-static {v6, v2}, Lcom/jcraft/jzlib/Tree;->bi_reverse(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p0, v5

    goto :goto_2

    .line 347
    .end local v2    # "len":I
    :cond_2
    return-void
.end method


# virtual methods
.method build_tree(Lcom/jcraft/jzlib/Deflate;)V
    .locals 14
    .param p1, "s"    # Lcom/jcraft/jzlib/Deflate;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 236
    iget-object v7, p0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 237
    .local v7, "tree":[S
    iget-object v8, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v6, v8, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 238
    .local v6, "stree":[S
    iget-object v8, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v0, v8, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 240
    .local v0, "elems":I
    const/4 v2, -0x1

    .line 246
    .local v2, "max_code":I
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 247
    const/16 v8, 0x23d

    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 249
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 250
    mul-int/lit8 v8, v3, 0x2

    aget-short v8, v7, v8

    if-eqz v8, :cond_0

    .line 251
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    move v2, v3

    aput v3, v8, v9

    .line 252
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aput-byte v10, v8, v3

    .line 249
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_0
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aput-short v10, v7, v8

    goto :goto_1

    .line 263
    :cond_1
    :goto_2
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v8, v13, :cond_3

    .line 264
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v2, v13, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_3
    aput v4, v8, v9

    .line 265
    .local v4, "node":I
    mul-int/lit8 v8, v4, 0x2

    aput-short v12, v7, v8

    .line 266
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aput-byte v10, v8, v4

    .line 267
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    sub-int/2addr v8, v12

    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    if-eqz v6, :cond_1

    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-short v9, v6, v9

    sub-int/2addr v8, v9

    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    goto :goto_2

    .end local v4    # "node":I
    :cond_2
    move v4, v10

    .line 264
    goto :goto_3

    .line 270
    :cond_3
    iput v2, p0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 275
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    div-int/lit8 v3, v8, 0x2

    :goto_4
    if-lt v3, v12, :cond_4

    .line 276
    invoke-virtual {p1, v7, v3}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 281
    :cond_4
    move v4, v0

    .line 284
    .restart local v4    # "node":I
    :goto_5
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v8, v12

    .line 285
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    sub-int v11, v10, v12

    iput v11, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    aget v9, v9, v10

    aput v9, v8, v12

    .line 286
    invoke-virtual {p1, v7, v12}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 287
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v1, v8, v12

    .line 289
    .local v1, "m":I
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    sub-int/2addr v9, v12

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v3, v8, v9

    .line 290
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    sub-int/2addr v9, v12

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v1, v8, v9

    .line 293
    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v9, v3, 0x2

    aget-short v9, v7, v9

    mul-int/lit8 v10, v1, 0x2

    aget-short v10, v7, v10

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 294
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v9, v9, v3

    iget-object v10, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v10, v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 295
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    int-to-short v10, v4

    aput-short v10, v7, v9

    aput-short v10, v7, v8

    .line 298
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "node":I
    .local v5, "node":I
    aput v4, v8, v12

    .line 299
    invoke-virtual {p1, v7, v12}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 301
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v8, v13, :cond_5

    .line 303
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    sub-int/2addr v9, v12

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    iget-object v10, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v10, v10, v12

    aput v10, v8, v9

    .line 308
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Tree;->gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V

    .line 311
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    invoke-static {v7, v2, v8}, Lcom/jcraft/jzlib/Tree;->gen_codes([SI[S)V

    .line 312
    return-void

    :cond_5
    move v4, v5

    .end local v5    # "node":I
    .restart local v4    # "node":I
    goto :goto_5
.end method

.method gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V
    .locals 20
    .param p1, "s"    # Lcom/jcraft/jzlib/Deflate;

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    move-object v12, v0

    .line 166
    .local v12, "tree":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    move-object v14, v0

    iget-object v11, v14, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 167
    .local v11, "stree":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    move-object v14, v0

    iget-object v4, v14, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    .line 168
    .local v4, "extra":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    move-object v14, v0

    iget v2, v14, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    .line 169
    .local v2, "base":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    move-object v14, v0

    iget v8, v14, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    .line 175
    .local v8, "max_length":I
    const/4 v10, 0x0

    .line 177
    .local v10, "overflow":I
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_0
    const/16 v14, 0xf

    if-gt v3, v14, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    const/4 v15, 0x0

    aput-short v15, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    move v15, v0

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    aput-short v15, v12, v14

    .line 183
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    move v14, v0

    add-int/lit8 v6, v14, 0x1

    .local v6, "h":I
    :goto_1
    const/16 v14, 0x23d

    if-ge v6, v14, :cond_5

    .line 184
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object v14, v0

    aget v9, v14, v6

    .line 185
    .local v9, "n":I
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    add-int/lit8 v3, v14, 0x1

    .line 186
    if-le v3, v8, :cond_1

    move v3, v8

    add-int/lit8 v10, v10, 0x1

    .line 187
    :cond_1
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-short v15, v3

    aput-short v15, v12, v14

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    move v14, v0

    if-le v9, v14, :cond_3

    .line 183
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 192
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    aget-short v15, v14, v3

    add-int/lit8 v15, v15, 0x1

    int-to-short v15, v15

    aput-short v15, v14, v3

    .line 193
    const/4 v13, 0x0

    .line 194
    .local v13, "xbits":I
    if-lt v9, v2, :cond_4

    sub-int v14, v9, v2

    aget v13, v4, v14

    .line 195
    :cond_4
    mul-int/lit8 v14, v9, 0x2

    aget-short v5, v12, v14

    .line 196
    .local v5, "f":S
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    move v14, v0

    add-int v15, v3, v13

    mul-int/2addr v15, v5

    add-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 197
    if-eqz v11, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    move v14, v0

    mul-int/lit8 v15, v9, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-short v15, v11, v15

    add-int/2addr v15, v13

    mul-int/2addr v15, v5

    add-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    goto :goto_2

    .line 199
    .end local v5    # "f":S
    .end local v9    # "n":I
    .end local v13    # "xbits":I
    :cond_5
    if-nez v10, :cond_7

    .line 227
    :cond_6
    return-void

    .line 204
    :cond_7
    const/4 v14, 0x1

    sub-int v3, v8, v14

    .line 205
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    aget-short v14, v14, v3

    if-nez v14, :cond_8

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 206
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    aget-short v15, v14, v3

    const/16 v16, 0x1

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v14, v3

    .line 207
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    add-int/lit8 v15, v3, 0x1

    aget-short v16, v14, v15

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v14, v15

    .line 208
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    aget-short v15, v14, v8

    const/16 v16, 0x1

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v14, v8

    .line 211
    add-int/lit8 v10, v10, -0x2

    .line 213
    if-gtz v10, :cond_7

    .line 215
    move v3, v8

    :goto_4
    if-eqz v3, :cond_6

    .line 216
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    move-object v14, v0

    aget-short v9, v14, v3

    .line 217
    .restart local v9    # "n":I
    :cond_9
    :goto_5
    if-eqz v9, :cond_b

    .line 218
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object v14, v0

    add-int/lit8 v6, v6, -0x1

    aget v7, v14, v6

    .line 219
    .local v7, "m":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    move v14, v0

    if-gt v7, v14, :cond_9

    .line 220
    mul-int/lit8 v14, v7, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    if-eq v14, v3, :cond_a

    .line 221
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    move v14, v0

    int-to-long v14, v14

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-int/lit8 v18, v7, 0x2

    add-int/lit8 v18, v18, 0x1

    aget-short v18, v12, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    mul-int/lit8 v18, v7, 0x2

    aget-short v18, v12, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 222
    mul-int/lit8 v14, v7, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-short v15, v3

    aput-short v15, v12, v14

    .line 224
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 215
    .end local v7    # "m":I
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

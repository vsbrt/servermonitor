.class public Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;
.super Ljava/lang/Object;
.source "DES.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;


# static fields
.field static Df_Key:[S

.field static SP1:[I

.field static SP2:[I

.field static SP3:[I

.field static SP4:[I

.field static SP5:[I

.field static SP6:[I

.field static SP7:[I

.field static SP8:[I

.field static bigbyte:[I

.field static bytebit:[S

.field static pc1:[B

.field static pc2:[B

.field static totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    const/16 v1, 0x40

    .line 93
    new-array v0, v2, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->Df_Key:[S

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->bytebit:[S

    .line 98
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->bigbyte:[I

    .line 105
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->pc1:[B

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->totrot:[B

    .line 111
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->pc2:[B

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP1:[I

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP2:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP3:[I

    .line 141
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP4:[I

    .line 150
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP5:[I

    .line 159
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP6:[I

    .line 168
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP7:[I

    .line 177
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP8:[I

    return-void

    .line 93
    nop

    :array_0
    .array-data 2
        0x1s
        0x23s
        0x45s
        0x67s
        0x89s
        0xabs
        0xcds
        0xefs
        0xfes
        0xdcs
        0xbas
        0x98s
        0x76s
        0x54s
        0x32s
        0x10s
        0x89s
        0xabs
        0xcds
        0xefs
        0x1s
        0x23s
        0x45s
        0x67s
    .end array-data

    .line 96
    :array_1
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    .line 105
    :array_3
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    .line 109
    :array_4
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    .line 111
    :array_5
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    .line 114
    :array_6
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    .line 123
    :array_7
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    .line 132
    :array_8
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    .line 141
    :array_9
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    .line 150
    :array_a
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    .line 159
    :array_b
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    .line 168
    :array_c
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    .line 177
    :array_d
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->workingKey:[I

    .line 46
    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .locals 7
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 288
    add-int/lit8 v5, p3, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x18

    .line 289
    .local v1, "left":I
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    .line 290
    add-int/lit8 v5, p3, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 291
    add-int/lit8 v5, p3, 0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 293
    add-int/lit8 v5, p3, 0x4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x18

    .line 294
    .local v2, "right":I
    add-int/lit8 v5, p3, 0x5

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    .line 295
    add-int/lit8 v5, p3, 0x6

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 296
    add-int/lit8 v5, p3, 0x7

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 298
    ushr-int/lit8 v5, v1, 0x4

    xor-int/2addr v5, v2

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 299
    .local v4, "work":I
    xor-int/2addr v2, v4

    .line 300
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v1, v5

    .line 301
    ushr-int/lit8 v5, v1, 0x10

    xor-int/2addr v5, v2

    const v6, 0xffff

    and-int v4, v5, v6

    .line 302
    xor-int/2addr v2, v4

    .line 303
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v1, v5

    .line 304
    ushr-int/lit8 v5, v2, 0x2

    xor-int/2addr v5, v1

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 305
    xor-int/2addr v1, v4

    .line 306
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v2, v5

    .line 307
    ushr-int/lit8 v5, v2, 0x8

    xor-int/2addr v5, v1

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 308
    xor-int/2addr v1, v4

    .line 309
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v2, v5

    .line 310
    shl-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v2, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v2, v5, -0x1

    .line 311
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 312
    xor-int/2addr v1, v4

    .line 313
    xor-int/2addr v2, v4

    .line 314
    shl-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v1, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v1, v5, -0x1

    .line 316
    const/4 v3, 0x0

    .local v3, "round":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 320
    shl-int/lit8 v5, v2, 0x1c

    ushr-int/lit8 v6, v2, 0x4

    or-int v4, v5, v6

    .line 321
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 322
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 323
    .local v0, "fval":I
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 324
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 325
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 326
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    xor-int v4, v2, v5

    .line 327
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 328
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 329
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 330
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 331
    xor-int/2addr v1, v0

    .line 332
    shl-int/lit8 v5, v1, 0x1c

    ushr-int/lit8 v6, v1, 0x4

    or-int v4, v5, v6

    .line 333
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 334
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 335
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 336
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 337
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 338
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    xor-int v4, v1, v5

    .line 339
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 340
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 341
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 342
    sget-object v5, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 343
    xor-int/2addr v2, v0

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 346
    .end local v0    # "fval":I
    :cond_0
    shl-int/lit8 v5, v2, 0x1f

    ushr-int/lit8 v6, v2, 0x1

    or-int v2, v5, v6

    .line 347
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 348
    xor-int/2addr v1, v4

    .line 349
    xor-int/2addr v2, v4

    .line 350
    shl-int/lit8 v5, v1, 0x1f

    ushr-int/lit8 v6, v1, 0x1

    or-int v1, v5, v6

    .line 351
    ushr-int/lit8 v5, v1, 0x8

    xor-int/2addr v5, v2

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 352
    xor-int/2addr v2, v4

    .line 353
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v1, v5

    .line 354
    ushr-int/lit8 v5, v1, 0x2

    xor-int/2addr v5, v2

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 355
    xor-int/2addr v2, v4

    .line 356
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v1, v5

    .line 357
    ushr-int/lit8 v5, v2, 0x10

    xor-int/2addr v5, v1

    const v6, 0xffff

    and-int v4, v5, v6

    .line 358
    xor-int/2addr v1, v4

    .line 359
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v2, v5

    .line 360
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v1

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 361
    xor-int/2addr v1, v4

    .line 362
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v2, v5

    .line 364
    add-int/lit8 v5, p5, 0x0

    ushr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 365
    add-int/lit8 v5, p5, 0x1

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 366
    add-int/lit8 v5, p5, 0x2

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 367
    add-int/lit8 v5, p5, 0x3

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 368
    add-int/lit8 v5, p5, 0x4

    ushr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 369
    add-int/lit8 v5, p5, 0x5

    ushr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 370
    add-int/lit8 v5, p5, 0x6

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 371
    add-int/lit8 v5, p5, 0x7

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 372
    return-void
.end method

.method protected generateWorkingKey(Z[BI)[I
    .locals 13
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B
    .param p3, "off"    # I

    .prologue
    .line 195
    const/16 v10, 0x20

    new-array v7, v10, [I

    .line 196
    .local v7, "newKey":[I
    const/16 v10, 0x38

    new-array v8, v10, [Z

    .local v8, "pc1m":[Z
    const/16 v10, 0x38

    new-array v9, v10, [Z

    .line 198
    .local v9, "pcr":[Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    const/16 v10, 0x38

    if-ge v3, v10, :cond_1

    .line 200
    sget-object v10, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->pc1:[B

    aget-byte v4, v10, v3

    .line 202
    .local v4, "l":I
    ushr-int/lit8 v10, v4, 0x3

    add-int v10, v10, p3

    aget-byte v10, p2, v10

    sget-object v11, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->bytebit:[S

    and-int/lit8 v12, v4, 0x7

    aget-short v11, v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v8, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 205
    .end local v4    # "l":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v10, 0x10

    if-ge v0, v10, :cond_a

    .line 209
    if-eqz p1, :cond_2

    .line 211
    shl-int/lit8 v5, v0, 0x1

    .line 218
    .local v5, "m":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .line 219
    .local v6, "n":I
    const/4 v10, 0x0

    aput v10, v7, v6

    aput v10, v7, v5

    .line 221
    const/4 v3, 0x0

    :goto_4
    const/16 v10, 0x1c

    if-ge v3, v10, :cond_4

    .line 223
    sget-object v10, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 224
    .restart local v4    # "l":I
    const/16 v10, 0x1c

    if-ge v4, v10, :cond_3

    .line 226
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 221
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 215
    .end local v4    # "l":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_2
    const/16 v10, 0xf

    sub-int/2addr v10, v0

    shl-int/lit8 v5, v10, 0x1

    .restart local v5    # "m":I
    goto :goto_3

    .line 230
    .restart local v4    # "l":I
    .restart local v6    # "n":I
    :cond_3
    const/16 v10, 0x1c

    sub-int v10, v4, v10

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_5

    .line 234
    .end local v4    # "l":I
    :cond_4
    const/16 v3, 0x1c

    :goto_6
    const/16 v10, 0x38

    if-ge v3, v10, :cond_6

    .line 236
    sget-object v10, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 237
    .restart local v4    # "l":I
    const/16 v10, 0x38

    if-ge v4, v10, :cond_5

    .line 239
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 234
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 243
    :cond_5
    const/16 v10, 0x1c

    sub-int v10, v4, v10

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_7

    .line 247
    .end local v4    # "l":I
    :cond_6
    const/4 v3, 0x0

    :goto_8
    const/16 v10, 0x18

    if-ge v3, v10, :cond_9

    .line 249
    sget-object v10, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->pc2:[B

    aget-byte v10, v10, v3

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_7

    .line 251
    aget v10, v7, v5

    sget-object v11, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v5

    .line 254
    :cond_7
    sget-object v10, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->pc2:[B

    add-int/lit8 v11, v3, 0x18

    aget-byte v10, v10, v11

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_8

    .line 256
    aget v10, v7, v6

    sget-object v11, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v6

    .line 247
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 205
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 264
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_a
    const/4 v0, 0x0

    :goto_9
    const/16 v10, 0x20

    if-eq v0, v10, :cond_b

    .line 268
    aget v1, v7, v0

    .line 269
    .local v1, "i1":I
    add-int/lit8 v10, v0, 0x1

    aget v2, v7, v10

    .line 271
    .local v2, "i2":I
    const/high16 v10, 0xfc0000

    and-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v11, v1, 0xfc0

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    const/high16 v11, 0xfc0000

    and-int/2addr v11, v2

    ushr-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    and-int/lit16 v11, v2, 0xfc0

    ushr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    aput v10, v7, v0

    .line 274
    add-int/lit8 v10, v0, 0x1

    const v11, 0x3f000

    and-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0xc

    and-int/lit8 v12, v1, 0x3f

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const v12, 0x3f000

    and-int/2addr v12, v2

    ushr-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int/2addr v11, v12

    aput v11, v7, v10

    .line 264
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 278
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_b
    return-object v7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 1
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->workingKey:[I

    .line 61
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->workingKey:[I

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 81
    return-void
.end method

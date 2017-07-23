.class public Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;
.super Ljava/lang/Object;
.source "CryptoWishList.java"


# instance fields
.field public c2s_comp_algos:[Ljava/lang/String;

.field public c2s_enc_algos:[Ljava/lang/String;

.field public c2s_mac_algos:[Ljava/lang/String;

.field public kexAlgorithms:[Ljava/lang/String;

.field public s2c_comp_algos:[Ljava/lang/String;

.field public s2c_enc_algos:[Ljava/lang/String;

.field public s2c_mac_algos:[Ljava/lang/String;

.field public serverHostKeyAlgorithms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getDefaultKexAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->getDefaultCompressorList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->getDefaultCompressorList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    return-void
.end method

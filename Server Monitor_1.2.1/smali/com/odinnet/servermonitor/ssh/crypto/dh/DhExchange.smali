.class public Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;
.super Ljava/lang/Object;
.source "DhExchange.java"


# static fields
.field static final g:Ljava/math/BigInteger;

.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;

.field static final p1:Ljava/math/BigInteger;

.field static final p14:Ljava/math/BigInteger;


# instance fields
.field e:Ljava/math/BigInteger;

.field f:Ljava/math/BigInteger;

.field k:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    const-class v2, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    invoke-static {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v2

    sput-object v2, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .line 44
    const-string v1, "179769313486231590770839156793787453197860296048756011706444423684197180216158519368947833795864925541502180565485980503646440548199239100050792877003355816639229553136239076508735759914822574862575007425302077447712589550957937778424442426617334727629299387668709205606050270810842907692932019128194467627007"

    .line 50
    .local v1, "p1_string":Ljava/lang/String;
    const-string v0, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    .line 59
    .local v0, "p14_string":Ljava/lang/String;
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "179769313486231590770839156793787453197860296048756011706444423684197180216158519368947833795864925541502180565485980503646440548199239100050792877003355816639229553136239076508735759914822574862575007425302077447712589550957937778424442426617334727629299387668709205606050270810842907692932019128194467627007"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    .line 60
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    .line 61
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "2"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[B)[B
    .locals 8
    .param p1, "clientversion"    # [B
    .param p2, "serverversion"    # [B
    .param p3, "clientKexPayload"    # [B
    .param p4, "serverKexPayload"    # [B
    .param p5, "hostKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5a

    const-string v7, "ISO-8859-1"

    const-string v6, "\'"

    .line 128
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "hash":Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;
    sget-object v1, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 133
    sget-object v1, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, p2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 138
    invoke-virtual {v0, p3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 139
    invoke-virtual {v0, p4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 140
    invoke-virtual {v0, p5}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 141
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 142
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 143
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 145
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object v1

    return-object v1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DhDsaExchange not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v2, 0x1

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 72
    if-ne p1, v2, :cond_0

    .line 73
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 79
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    .line 81
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    .line 82
    return-void

    .line 74
    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 75
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DH group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "f"    # Ljava/math/BigInteger;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DhDsaExchange not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 118
    .local v0, "zero":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid f specified!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_2
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    .line 122
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    .line 123
    return-void
.end method

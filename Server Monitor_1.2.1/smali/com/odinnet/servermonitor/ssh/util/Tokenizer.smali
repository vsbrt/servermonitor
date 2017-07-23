.class public Lcom/odinnet/servermonitor/ssh/util/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    .line 22
    const/4 v4, 0x1

    .line 24
    .local v4, "numtoken":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_0

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    .line 31
    .local v2, "list":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 33
    .local v3, "nextfield":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 37
    const-string v5, ""

    aput-object v5, v2, v0

    .line 33
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 42
    .local v1, "idx":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 44
    :cond_3
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 45
    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    .line 49
    .end local v1    # "idx":I
    :cond_4
    return-object v2
.end method

.class public Lcom/odinnet/servermonitor/ssh/DHGexParameters;
.super Ljava/lang/Object;
.source "DHGexParameters.java"


# static fields
.field private static final MAX_ALLOWED:I = 0x2000

.field private static final MIN_ALLOWED:I = 0x400


# instance fields
.field private final max_group_len:I

.field private final min_group_len:I

.field private final pref_group_len:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 33
    const/16 v0, 0x1000

    invoke-direct {p0, v1, v1, v0}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;-><init>(III)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pref_group_len"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-le p1, v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pref_group_len out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->pref_group_len:I

    .line 50
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->min_group_len:I

    .line 51
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->max_group_len:I

    .line 52
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "min_group_len"    # I
    .param p2, "pref_group_len"    # I
    .param p3, "max_group_len"    # I

    .prologue
    const/16 v1, 0x2000

    const/16 v0, 0x400

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min_group_len out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-lt p2, v0, :cond_2

    if-le p2, v1, :cond_3

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pref_group_len out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    if-lt p3, v0, :cond_4

    if-le p3, v1, :cond_5

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max_group_len out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    if-lt p2, p1, :cond_6

    if-le p2, p3, :cond_7

    .line 80
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pref_group_len is incompatible with min and max!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_7
    if-ge p3, p1, :cond_8

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max_group_len must not be smaller than min_group_len!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_8
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->min_group_len:I

    .line 86
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->pref_group_len:I

    .line 87
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->max_group_len:I

    .line 88
    return-void
.end method


# virtual methods
.method public getMax_group_len()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->max_group_len:I

    return v0
.end method

.method public getMin_group_len()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->min_group_len:I

    return v0
.end method

.method public getPref_group_len()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->pref_group_len:I

    return v0
.end method

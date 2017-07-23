.class final synthetic Lcom/admob/android/ads/b$1;
.super Ljava/lang/Object;
.source "AdRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 490
    invoke-static {}, Lcom/admob/android/ads/j$b;->values()[Lcom/admob/android/ads/j$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/admob/android/ads/b$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/admob/android/ads/b$1;->a:[I

    sget-object v1, Lcom/admob/android/ads/j$b;->b:Lcom/admob/android/ads/j$b;

    invoke-virtual {v1}, Lcom/admob/android/ads/j$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/admob/android/ads/b$1;->a:[I

    sget-object v1, Lcom/admob/android/ads/j$b;->a:Lcom/admob/android/ads/j$b;

    invoke-virtual {v1}, Lcom/admob/android/ads/j$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

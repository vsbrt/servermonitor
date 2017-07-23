.class public final Lcom/admob/android/ads/s;
.super Ljava/lang/Object;
.source "AdMobImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/s$a;,
        Lcom/admob/android/ads/s$b;
    }
.end annotation


# static fields
.field private static a:Lcom/admob/android/ads/s;


# instance fields
.field private b:Ljava/io/File;

.field private c:J

.field private d:J

.field private e:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/s;->a:Lcom/admob/android/ads/s;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/32 v0, 0x80000

    iput-wide v0, p0, Lcom/admob/android/ads/s;->d:J

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    .line 78
    iput-object v2, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    .line 79
    iput-object v2, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "admob_img_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/admob/android/ads/s;->b:Ljava/io/File;

    .line 82
    iget-object v0, p0, Lcom/admob/android/ads/s;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/admob/android/ads/s;->a(Ljava/io/File;)V

    .line 83
    return-void

    .line 81
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/admob/android/ads/s;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/admob/android/ads/s;->a:Lcom/admob/android/ads/s;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/admob/android/ads/s;

    const-wide/32 v1, 0x80000

    invoke-direct {v0, p0, v1, v2}, Lcom/admob/android/ads/s;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lcom/admob/android/ads/s;->a:Lcom/admob/android/ads/s;

    .line 36
    :cond_0
    sget-object v0, Lcom/admob/android/ads/s;->a:Lcom/admob/android/ads/s;

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/admob/android/ads/s$a;

    sget-object v1, Lcom/admob/android/ads/s;->a:Lcom/admob/android/ads/s;

    invoke-direct {v0, v1}, Lcom/admob/android/ads/s$a;-><init>(Lcom/admob/android/ads/s;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/s$a;->start()V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/s;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/admob/android/ads/s;->b()V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0x14

    new-instance v3, Lcom/admob/android/ads/s$b;

    invoke-direct {v3}, Lcom/admob/android/ads/s$b;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    .line 101
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    .line 103
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-wide v4, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long v3, v4, v6

    iput-wide v3, p0, Lcom/admob/android/ads/s;->c:J

    .line 103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    .prologue
    const-string v0, "AdMobSDK"

    .line 216
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    iget-wide v2, p0, Lcom/admob/android/ads/s;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 220
    const-string v1, "AdMobSDK"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache: evicting bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/admob/android/ads/s;->b(Ljava/io/File;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/io/File;)V
    .locals 4

    .prologue
    const-string v0, "AdMobSDK"

    .line 113
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 116
    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 117
    iget-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    .line 118
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache: removed file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/io/File;)V
    .locals 4

    .prologue
    const-string v0, "AdMobSDK"

    .line 126
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    :cond_0
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "AdMobSDK"

    const-string v1, "Cache: trying to add a file that\'s already in index"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/admob/android/ads/s;->b(Ljava/io/File;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/admob/android/ads/s;->c:J

    .line 138
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache: added file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_3
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const-string v0, "AdMobSDK"

    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 147
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 154
    iget-object v2, p0, Lcom/admob/android/ads/s;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v2, "AdMobSDK"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache: found bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalBytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new modified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v0, v1

    .line 163
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const-string v0, "AdMobSDK"

    .line 167
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/admob/android/ads/s;->b:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/admob/android/ads/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 172
    if-eqz v0, :cond_1

    .line 173
    const-string v2, "AdMobSDK"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache: found bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Lcom/admob/android/ads/s;->b(Ljava/io/File;)V

    .line 179
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 186
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-direct {p0, v1}, Lcom/admob/android/ads/s;->c(Ljava/io/File;)V

    .line 189
    const-string v0, "AdMobSDK"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string v0, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache: added bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/admob/android/ads/s;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastModified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

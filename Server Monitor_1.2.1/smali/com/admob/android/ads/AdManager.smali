.class public Lcom/admob/android/ads/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdManager$Gender;
    }
.end annotation


# static fields
.field public static final LOG:Ljava/lang/String; = "AdMobSDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "20101012-ANDROID-3312276cc1406347"

.field public static final SDK_VERSION_DATE:Ljava/lang/String; = "20101012"

.field public static final TEST_EMULATOR:Ljava/lang/String; = "emulator"

.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Landroid/location/Location;

.field private static i:Z

.field private static j:Z

.field private static k:J

.field private static l:Ljava/lang/String;

.field private static m:Ljava/util/GregorianCalendar;

.field private static n:Lcom/admob/android/ads/AdManager$Gender;

.field private static o:Z

.field public static testValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "AdMobSDK"

    .line 107
    sget-object v0, Lcom/admob/android/ads/j$a;->a:Lcom/admob/android/ads/j$a;

    invoke-virtual {v0}, Lcom/admob/android/ads/j$a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdManager;->e:Ljava/lang/String;

    .line 117
    sput-object v2, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    .line 133
    sput-boolean v1, Lcom/admob/android/ads/AdManager;->i:Z

    .line 138
    sput-boolean v1, Lcom/admob/android/ads/AdManager;->j:Z

    .line 168
    sput-boolean v1, Lcom/admob/android/ads/AdManager;->o:Z

    .line 175
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v3, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "AdMobSDK"

    const-string v0, "AdMob SDK version is 20101012-ANDROID-3312276cc1406347"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    sput-object v2, Lcom/admob/android/ads/AdManager;->testValue:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 35
    sput-wide p0, Lcom/admob/android/ads/AdManager;->k:J

    return-wide p0
.end method

.method static synthetic a(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/admob/android/ads/AdManager;->h:Landroid/location/Location;

    return-object p0
.end method

.method static a(Lcom/admob/android/ads/v;)Lcom/admob/android/ads/a;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1071
    invoke-virtual {p0}, Lcom/admob/android/ads/v;->a()I

    move-result v0

    .line 1074
    invoke-static {}, Lcom/admob/android/ads/AdManager;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    sget-object v0, Lcom/admob/android/ads/a;->c:Lcom/admob/android/ads/a;

    .line 1103
    :goto_0
    return-object v0

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/v;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/v;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 1081
    :cond_1
    sget-object v0, Lcom/admob/android/ads/a;->b:Lcom/admob/android/ads/a;

    goto :goto_0

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lcom/admob/android/ads/v;->d()I

    move-result v0

    .line 1094
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    .line 1098
    :cond_3
    sget-object v0, Lcom/admob/android/ads/a;->b:Lcom/admob/android/ads/a;

    goto :goto_0

    .line 1100
    :cond_4
    sget-object v0, Lcom/admob/android/ads/a;->a:Lcom/admob/android/ads/a;

    goto :goto_0
.end method

.method static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 877
    sget-wide v0, Lcom/admob/android/ads/AdManager;->k:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "AdMobSDK"

    .line 302
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    const-string v2, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher ID read from AndroidManifest.xml is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 315
    :cond_1
    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-string v0, "AdMobSDK"

    .line 230
    sget-boolean v0, Lcom/admob/android/ads/AdManager;->o:Z

    if-nez v0, :cond_6

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/admob/android/ads/AdManager;->o:Z

    .line 237
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 241
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "ADMOB_PUBLISHER_ID"

    sget-object v5, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/admob/android/ads/AdManager;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->setPublisherId(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "ADMOB_INTERSTITIAL_PUBLISHER_ID"

    sget-object v5, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/admob/android/ads/AdManager;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->setInterstitialPublisherId(Ljava/lang/String;)V

    :cond_1
    sget-boolean v3, Lcom/admob/android/ads/AdManager;->j:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "ADMOB_ALLOW_LOCATION_FOR_ADS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/admob/android/ads/AdManager;->i:Z

    :cond_2
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    sget-object v2, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/admob/android/ads/AdManager;->a(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/admob/android/ads/AdManager;->a(Ljava/lang/String;)V

    :cond_4
    const-string v2, "AdMobSDK"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application\'s package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_6

    .line 248
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/admob/android/ads/AdManager;->b:I

    .line 249
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application\'s version number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/admob/android/ads/AdManager;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 436
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETUP ERROR:  Incorrect AdMob publisher ID.  Should 15 [a-f,0-9] characters:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 440
    :cond_1
    sget-object v0, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "a1496ced2842262"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.admob.android.ads"

    sget-object v1, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.example.admob.lunarlander"

    sget-object v1, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    const-string v0, "SETUP ERROR:  Cannot use the sample publisher ID (a1496ced2842262).  Yours is available on www.admob.com."

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 448
    :cond_2
    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 947
    const/4 v0, 0x0

    .line 948
    invoke-static {}, Lcom/admob/android/ads/AdManager;->getBirthday()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 950
    if-eqz v1, :cond_0

    .line 952
    const-string v0, "%04d%02d%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 958
    :cond_0
    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "AdMobSDK"

    .line 853
    const/4 v0, 0x0

    .line 854
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getCoordinates(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 856
    if-eqz v1, :cond_0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    :cond_0
    const-string v1, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User coordinates are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_1
    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1011
    sget-object v0, Lcom/admob/android/ads/AdManager;->n:Lcom/admob/android/ads/AdManager$Gender;

    sget-object v1, Lcom/admob/android/ads/AdManager$Gender;->MALE:Lcom/admob/android/ads/AdManager$Gender;

    if-ne v0, v1, :cond_0

    .line 1013
    const-string v0, "m"

    .line 1021
    :goto_0
    return-object v0

    .line 1015
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->n:Lcom/admob/android/ads/AdManager$Gender;

    sget-object v1, Lcom/admob/android/ads/AdManager$Gender;->FEMALE:Lcom/admob/android/ads/AdManager$Gender;

    if-ne v0, v1, :cond_1

    .line 1017
    const-string v0, "f"

    goto :goto_0

    .line 1021
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static clientError(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string v1, "AdMobSDK"

    .line 198
    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "AdMobSDK"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/admob/android/ads/AdManager;->h:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/admob/android/ads/AdManager;->k:J

    return-wide v0
.end method

.method public static getApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 333
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected static getApplicationVersion(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/admob/android/ads/AdManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 348
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 351
    :cond_0
    sget v0, Lcom/admob/android/ads/AdManager;->b:I

    return v0
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 936
    sget-object v0, Lcom/admob/android/ads/AdManager;->m:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getCoordinates(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "AdMobSDK"

    .line 705
    invoke-static {}, Lcom/admob/android/ads/AdManager;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/admob/android/ads/AdManager;->i:Z

    if-nez v0, :cond_0

    .line 706
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "AdMobSDK"

    const-string v0, "Location information is not being used for ad requests. Enable location"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v0, "AdMobSDK"

    const-string v0, "based ads with AdManager.setAllowUseOfLocation(true) or by setting "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v0, "AdMobSDK"

    const-string v0, "meta-data ADMOB_ALLOW_LOCATION_FOR_ADS to true in AndroidManifest.xml"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    sget-boolean v0, Lcom/admob/android/ads/AdManager;->i:Z

    if-eqz v0, :cond_7

    if-eqz p0, :cond_7

    .line 715
    sget-object v0, Lcom/admob/android/ads/AdManager;->h:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/admob/android/ads/AdManager;->k:J

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 718
    :cond_1
    monitor-enter p0

    .line 722
    :try_start_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->h:Landroid/location/Location;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/admob/android/ads/AdManager;->k:J

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 725
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/admob/android/ads/AdManager;->k:J

    .line 732
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 734
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    const-string v0, "AdMobSDK"

    const-string v1, "Trying to get locations from the network."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_3
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 742
    if-eqz v0, :cond_c

    .line 744
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 745
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 746
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 747
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 752
    :goto_0
    if-nez v1, :cond_5

    .line 754
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 756
    const-string v0, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 758
    const-string v0, "AdMobSDK"

    const-string v2, "Trying to get locations from GPS."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_4
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 764
    if-eqz v0, :cond_b

    .line 766
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 767
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 768
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 769
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 775
    :cond_5
    :goto_1
    if-nez v2, :cond_8

    .line 777
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 779
    const-string v0, "AdMobSDK"

    const-string v1, "Cannot access user\'s location.  Permissions are not set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_6
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_7
    sget-object v0, Lcom/admob/android/ads/AdManager;->h:Landroid/location/Location;

    return-object v0

    .line 782
    :cond_8
    if-nez v1, :cond_9

    .line 784
    :try_start_1
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 786
    const-string v0, "AdMobSDK"

    const-string v1, "No location providers are available.  Ads will not be geotargeted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 791
    :cond_9
    :try_start_2
    const-string v2, "AdMobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 793
    const-string v2, "AdMobSDK"

    const-string v3, "Location provider setup successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_a
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/admob/android/ads/AdManager$1;

    invoke-direct {v5, v0}, Lcom/admob/android/ads/AdManager$1;-><init>(Landroid/location/LocationManager;)V

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_b
    move v2, v6

    goto :goto_1

    :cond_c
    move-object v1, v8

    move v2, v6

    goto/16 :goto_0

    :cond_d
    move-object v1, v8

    move-object v0, v8

    move v2, v7

    goto/16 :goto_0
.end method

.method static getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    invoke-static {}, Lcom/admob/android/ads/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGender()Lcom/admob/android/ads/AdManager$Gender;
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Lcom/admob/android/ads/AdManager;->n:Lcom/admob/android/ads/AdManager$Gender;

    return-object v0
.end method

.method public static getInterstitialPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "AdMobSDK"

    .line 385
    sget-object v0, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 387
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 391
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "AdMobSDK"

    const-string v0, "getInterstitialPublisherId returning null publisher id.  Please set the publisher id in AndroidManifest.xml or using AdManager.setPublisherId(String)"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    sget-object v0, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 900
    const-string v0, "p"

    .line 902
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 904
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 906
    const-string v0, "l"

    .line 908
    :cond_0
    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/admob/android/ads/AdManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "AdMobSDK"

    .line 362
    sget-object v0, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 364
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 368
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const-string v0, "AdMobSDK"

    const-string v0, "getPublisherId returning null publisher id.  Please set the publisher id in AndroidManifest.xml or using AdManager.setPublisherId(String)"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    sget-object v0, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static getScreenWidth(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 213
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 214
    const/4 v1, 0x0

    .line 215
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getTestAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/admob/android/ads/AdManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method static getTestDevices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "emulator"

    const-string v2, "AdMobSDK"

    .line 599
    sget-object v0, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admob/android/ads/AdManager;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    :cond_0
    const-string v0, "emulator"

    sput-object v3, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    .line 610
    const-string v0, "AdMobSDK"

    const-string v0, "To get test ads on the emulator use AdManager.setTestDevices( new String[] { AdManager.TEST_EMULATOR } )"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The user ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_1
    sget-object v0, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    const-string v1, "emulator"

    if-ne v0, v3, :cond_3

    .line 629
    const/4 v0, 0x0

    .line 633
    :goto_1
    return-object v0

    .line 615
    :cond_2
    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    .line 617
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To get test ads on this device use AdManager.setTestDevices( new String[] { \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" } )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_3
    sget-object v0, Lcom/admob/android/ads/AdManager;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isEmulator()Z
    .locals 3

    .prologue
    const-string v2, "generic"

    .line 578
    sget-object v0, Lcom/admob/android/ads/AdManager;->testValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/admob/android/ads/AdManager;->testValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 581
    :goto_0
    return v0

    :cond_0
    const-string v0, "unknown"

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "generic"

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "generic"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestDevice(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    .line 519
    sget-object v0, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 521
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 523
    if-nez v0, :cond_0

    .line 526
    const-string v0, "emulator"

    .line 529
    :cond_0
    sget-object v1, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 529
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "AdMobSDK"

    .line 645
    const/4 v0, 0x0

    .line 647
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 651
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 653
    const-string v1, "%032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 665
    :cond_0
    :goto_0
    return-object v0

    .line 655
    :catch_0
    move-exception v0

    .line 657
    const-string v1, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v7, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not generate hash of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAllowUseOfLocation(Z)V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    sput-boolean v0, Lcom/admob/android/ads/AdManager;->j:Z

    .line 689
    sput-boolean p0, Lcom/admob/android/ads/AdManager;->i:Z

    .line 690
    return-void
.end method

.method public static setBirthday(III)V
    .locals 2

    .prologue
    .line 988
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 989
    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 990
    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 991
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .locals 0

    .prologue
    .line 968
    sput-object p0, Lcom/admob/android/ads/AdManager;->m:Ljava/util/GregorianCalendar;

    .line 969
    return-void
.end method

.method static setEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1042
    invoke-static {p0}, Lcom/admob/android/ads/b;->a(Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public static setGender(Lcom/admob/android/ads/AdManager$Gender;)V
    .locals 0

    .prologue
    .line 1032
    sput-object p0, Lcom/admob/android/ads/AdManager;->n:Lcom/admob/android/ads/AdManager$Gender;

    .line 1033
    return-void
.end method

.method public static setInterstitialPublisherId(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 427
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Ljava/lang/String;)V

    .line 429
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial Publisher ID set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    sput-object p0, Lcom/admob/android/ads/AdManager;->d:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 925
    sput-object p0, Lcom/admob/android/ads/AdManager;->l:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 413
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Ljava/lang/String;)V

    .line 415
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publisher ID set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    sput-object p0, Lcom/admob/android/ads/AdManager;->c:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public static setShowDeveloperLogs(Z)V
    .locals 0

    .prologue
    .line 976
    invoke-static {p0}, Lcom/admob/android/ads/x;->a(Z)V

    .line 977
    return-void
.end method

.method public static setTestAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 553
    sput-object p0, Lcom/admob/android/ads/AdManager;->e:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public static setTestDevices([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 489
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 495
    sput-object p0, Lcom/admob/android/ads/AdManager;->f:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.class public Lcom/odinnet/servermonitor/ssh/sftp/OpenFlags;
.super Ljava/lang/Object;
.source "OpenFlags.java"


# static fields
.field public static final SSH_FXF_ACCESS_APPEND_DATA:I = 0x8

.field public static final SSH_FXF_ACCESS_APPEND_DATA_ATOMIC:I = 0x10

.field public static final SSH_FXF_ACCESS_BLOCK_ADVISORY:I = 0x200

.field public static final SSH_FXF_ACCESS_BLOCK_DELETE:I = 0x100

.field public static final SSH_FXF_ACCESS_BLOCK_READ:I = 0x40

.field public static final SSH_FXF_ACCESS_BLOCK_WRITE:I = 0x80

.field public static final SSH_FXF_ACCESS_DELETE_ON_CLOSE:I = 0x800

.field public static final SSH_FXF_ACCESS_DISPOSITION:I = 0x7

.field public static final SSH_FXF_ACCESS_NOFOLLOW:I = 0x400

.field public static final SSH_FXF_ACCESS_TEXT_MODE:I = 0x20

.field public static final SSH_FXF_CREATE_NEW:I = 0x0

.field public static final SSH_FXF_CREATE_TRUNCATE:I = 0x1

.field public static final SSH_FXF_OPEN_EXISTING:I = 0x2

.field public static final SSH_FXF_OPEN_OR_CREATE:I = 0x3

.field public static final SSH_FXF_TRUNCATE_EXISTING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

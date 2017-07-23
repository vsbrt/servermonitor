.class public Lcom/odinnet/servermonitor/ssh/sftp/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_BYTE_RANGE_LOCK_CONFLICT:I = 0x19

.field public static final SSH_FX_BYTE_RANGE_LOCK_REFUSED:I = 0x1a

.field public static final SSH_FX_CANNOT_DELETE:I = 0x16

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_DELETE_PENDING:I = 0x1b

.field public static final SSH_FX_DIR_NOT_EMPTY:I = 0x12

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_FILE_ALREADY_EXISTS:I = 0xb

.field public static final SSH_FX_FILE_CORRUPT:I = 0x1c

.field public static final SSH_FX_FILE_IS_A_DIRECTORY:I = 0x18

.field public static final SSH_FX_GROUP_INVALID:I = 0x1e

.field public static final SSH_FX_INVALID_FILENAME:I = 0x14

.field public static final SSH_FX_INVALID_HANDLE:I = 0x9

.field public static final SSH_FX_INVALID_PARAMETER:I = 0x17

.field public static final SSH_FX_LINK_LOOP:I = 0x15

.field public static final SSH_FX_LOCK_CONFLICT:I = 0x11

.field public static final SSH_FX_NOT_A_DIRECTORY:I = 0x13

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK:I = 0x1f

.field public static final SSH_FX_NO_MEDIA:I = 0xd

.field public static final SSH_FX_NO_SPACE_ON_FILESYSTEM:I = 0xe

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_NO_SUCH_PATH:I = 0xa

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_OWNER_INVALID:I = 0x1d

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field public static final SSH_FX_QUOTA_EXCEEDED:I = 0xf

.field public static final SSH_FX_UNKNOWN_PRINCIPAL:I = 0x10

.field public static final SSH_FX_WRITE_PROTECT:I = 0xc

.field private static final messages:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SSH_FX_OK"

    aput-object v2, v1, v4

    const-string v2, "Indicates successful completion of the operation."

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SSH_FX_EOF"

    aput-object v2, v1, v4

    const-string v2, "An attempt to read past the end-of-file was made; or, there are no more directory entries to return."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SSH_FX_NO_SUCH_FILE"

    aput-object v2, v1, v4

    const-string v2, "A reference was made to a file which does not exist."

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_PERMISSION_DENIED"

    aput-object v3, v2, v4

    const-string v3, "The user does not have sufficient permissions to perform the operation."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_FAILURE"

    aput-object v3, v2, v4

    const-string v3, "An error occurred, but no specific error code exists to describe the failure."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_BAD_MESSAGE"

    aput-object v3, v2, v4

    const-string v3, "A badly formatted packet or other SFTP protocol incompatibility was detected."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NO_CONNECTION"

    aput-object v3, v2, v4

    const-string v3, "There is no connection to the server."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_CONNECTION_LOST"

    aput-object v3, v2, v4

    const-string v3, "The connection to the server was lost."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_OP_UNSUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "An attempted operation could not be completed by the server because the server does not support the operation."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_INVALID_HANDLE"

    aput-object v3, v2, v4

    const-string v3, "The handle value was invalid."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NO_SUCH_PATH"

    aput-object v3, v2, v4

    const-string v3, "The file path does not exist or is invalid."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_FILE_ALREADY_EXISTS"

    aput-object v3, v2, v4

    const-string v3, "The file already exists."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_WRITE_PROTECT"

    aput-object v3, v2, v4

    const-string v3, "The file is on read-only media, or the media is write protected."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NO_MEDIA"

    aput-object v3, v2, v4

    const-string v3, "The requested operation cannot be completed because there is no media available in the drive."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NO_SPACE_ON_FILESYSTEM"

    aput-object v3, v2, v4

    const-string v3, "The requested operation cannot be completed because there is insufficient free space on the filesystem."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_QUOTA_EXCEEDED"

    aput-object v3, v2, v4

    const-string v3, "The operation cannot be completed because it would exceed the user\'s storage quota."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_UNKNOWN_PRINCIPAL"

    aput-object v3, v2, v4

    const-string v3, "A principal referenced by the request (either the \'owner\', \'group\', or \'who\' field of an ACL), was unknown. The error specific data contains the problematic names."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_LOCK_CONFLICT"

    aput-object v3, v2, v4

    const-string v3, "The file could not be opened because it is locked by another process."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_DIR_NOT_EMPTY"

    aput-object v3, v2, v4

    const-string v3, "The directory is not empty."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NOT_A_DIRECTORY"

    aput-object v3, v2, v4

    const-string v3, "The specified file is not a directory."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_INVALID_FILENAME"

    aput-object v3, v2, v4

    const-string v3, "The filename is not valid."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_LINK_LOOP"

    aput-object v3, v2, v4

    const-string v3, "Too many symbolic links encountered or, an SSH_FXF_NOFOLLOW open encountered a symbolic link as the final component."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_CANNOT_DELETE"

    aput-object v3, v2, v4

    const-string v3, "The file cannot be deleted. One possible reason is that the advisory READONLY attribute-bit is set."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_INVALID_PARAMETER"

    aput-object v3, v2, v4

    const-string v3, "One of the parameters was out of range, or the parameters specified cannot be used together."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_FILE_IS_A_DIRECTORY"

    aput-object v3, v2, v4

    const-string v3, "The specified file was a directory in a context where a directory cannot be used."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_BYTE_RANGE_LOCK_CONFLICT"

    aput-object v3, v2, v4

    const-string v3, " A read or write operation failed because another process\'s mandatory byte-range lock overlaps with the request."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_BYTE_RANGE_LOCK_REFUSED"

    aput-object v3, v2, v4

    const-string v3, "A request for a byte range lock was refused."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_DELETE_PENDING"

    aput-object v3, v2, v4

    const-string v3, "An operation was attempted on a file for which a delete operation is pending."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_FILE_CORRUPT"

    aput-object v3, v2, v4

    const-string v3, "The file is corrupt; an filesystem integrity check should be run."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_OWNER_INVALID"

    aput-object v3, v2, v4

    const-string v3, "The principal specified can not be assigned as an owner of a file."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_GROUP_INVALID"

    aput-object v3, v2, v4

    const-string v3, "The principal specified can not be assigned as the primary group of a file."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK"

    aput-object v3, v2, v4

    const-string v3, "The requested operation could not be completed because the\tspecifed byte range lock has not been granted."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/odinnet/servermonitor/ssh/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDescription(I)[Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 99
    if-ltz p0, :cond_0

    sget-object v0, Lcom/odinnet/servermonitor/ssh/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/odinnet/servermonitor/ssh/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

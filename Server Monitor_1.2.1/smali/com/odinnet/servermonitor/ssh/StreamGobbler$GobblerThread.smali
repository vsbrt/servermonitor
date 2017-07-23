.class Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GobblerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/16 v12, 0x2000

    .line 41
    new-array v1, v12, [B

    .line 47
    .local v1, "buff":[B
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->is:Ljava/io/InputStream;
    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$000(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 49
    .local v0, "avail":I
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->synchronizer:Ljava/lang/Object;
    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$100(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-gtz v0, :cond_0

    .line 53
    :try_start_1
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    const/4 v10, 0x1

    # setter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->isEOF:Z
    invoke-static {v9, v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$202(Lcom/odinnet/servermonitor/ssh/StreamGobbler;Z)Z

    .line 54
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->synchronizer:Ljava/lang/Object;
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$100(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v8

    .line 102
    .end local v0    # "avail":I
    :goto_1
    return-void

    .line 58
    .restart local v0    # "avail":I
    :cond_0
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$300(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)[B

    move-result-object v9

    array-length v9, v9

    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->write_pos:I
    invoke-static {v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$400(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)I

    move-result v10

    sub-int v6, v9, v10

    .line 60
    .local v6, "space_available":I
    if-ge v6, v0, :cond_5

    .line 64
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->write_pos:I
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$400(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)I

    move-result v9

    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->read_pos:I
    invoke-static {v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$500(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)I

    move-result v10

    sub-int v7, v9, v10

    .line 65
    .local v7, "unread_size":I
    add-int v4, v7, v0

    .line 67
    .local v4, "need_space":I
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$300(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)[B

    move-result-object v5

    .line 69
    .local v5, "new_buffer":[B
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$300(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)[B

    move-result-object v9

    array-length v9, v9

    if-le v4, v9, :cond_3

    .line 71
    div-int/lit8 v3, v4, 0x3

    .line 72
    .local v3, "inc":I
    if-ge v3, v13, :cond_1

    move v3, v13

    .line 73
    :cond_1
    if-le v3, v12, :cond_2

    move v3, v12

    .line 74
    :cond_2
    add-int v9, v4, v3

    new-array v5, v9, [B

    .line 77
    .end local v3    # "inc":I
    :cond_3
    if-lez v7, :cond_4

    .line 78
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$300(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->read_pos:I
    invoke-static {v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$500(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_4
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # setter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v9, v5}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$302(Lcom/odinnet/servermonitor/ssh/StreamGobbler;[B)[B

    .line 82
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    const/4 v10, 0x0

    # setter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->read_pos:I
    invoke-static {v9, v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$502(Lcom/odinnet/servermonitor/ssh/StreamGobbler;I)I

    .line 83
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # setter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->write_pos:I
    invoke-static {v9, v7}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$402(Lcom/odinnet/servermonitor/ssh/StreamGobbler;I)I

    .line 86
    .end local v4    # "need_space":I
    .end local v5    # "new_buffer":[B
    .end local v7    # "unread_size":I
    :cond_5
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->buffer:[B
    invoke-static {v10}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$300(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)[B

    move-result-object v10

    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->write_pos:I
    invoke-static {v11}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$400(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)I

    move-result v11

    invoke-static {v1, v9, v10, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # += operator for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->write_pos:I
    invoke-static {v9, v0}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$412(Lcom/odinnet/servermonitor/ssh/StreamGobbler;I)I

    .line 89
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->synchronizer:Ljava/lang/Object;
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$100(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v8

    goto/16 :goto_0

    .end local v6    # "space_available":I
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .end local v0    # "avail":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 94
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->synchronizer:Ljava/lang/Object;
    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$100(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 96
    :try_start_3
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # setter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->exception:Ljava/io/IOException;
    invoke-static {v9, v2}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$602(Lcom/odinnet/servermonitor/ssh/StreamGobbler;Ljava/io/IOException;)Ljava/io/IOException;

    .line 97
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/StreamGobbler$GobblerThread;->this$0:Lcom/odinnet/servermonitor/ssh/StreamGobbler;

    # getter for: Lcom/odinnet/servermonitor/ssh/StreamGobbler;->synchronizer:Ljava/lang/Object;
    invoke-static {v9}, Lcom/odinnet/servermonitor/ssh/StreamGobbler;->access$100(Lcom/odinnet/servermonitor/ssh/StreamGobbler;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v8

    goto/16 :goto_1

    .line 99
    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9
.end method

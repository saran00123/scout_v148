.class public Lcom/huawei/hms/availableupdate/c;
.super Ljava/io/OutputStream;
.source "RandomFileOutputStream.java"


# instance fields
.field public a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    const-string v0, "create  file stream failed"

    const-string v1, "RandomFileOutputStream"

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3
    :try_start_7
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_16} :catch_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_23

    .line 8
    :catch_17
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 10
    :catch_20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_7
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/huawei/hms/availableupdate/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/c;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_7
    return-void
.end method

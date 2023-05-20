.class Lcom/tutk/IOTC/AVAPIs$1;
.super Ljava/lang/Object;
.source "AVAPIs.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl_2(II[BI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutk/IOTC/AVAPIs;

.field final synthetic val$avIndex:I

.field final synthetic val$ioCtrlBuf:[B

.field final synthetic val$ioCtrlBufSize:I

.field final synthetic val$ioType:I


# direct methods
.method constructor <init>(Lcom/tutk/IOTC/AVAPIs;II[BI)V
    .registers 6

    .line 434
    iput-object p1, p0, Lcom/tutk/IOTC/AVAPIs$1;->this$0:Lcom/tutk/IOTC/AVAPIs;

    iput p2, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$avIndex:I

    iput p3, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioType:I

    iput-object p4, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioCtrlBuf:[B

    iput p5, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioCtrlBufSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 5

    .line 438
    iget v0, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$avIndex:I

    iget v1, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioType:I

    iget-object v2, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioCtrlBuf:[B

    iget v3, p0, Lcom/tutk/IOTC/AVAPIs$1;->val$ioCtrlBufSize:I

    invoke-static {v0, v1, v2, v3}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/tutk/IOTC/AVAPIs$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

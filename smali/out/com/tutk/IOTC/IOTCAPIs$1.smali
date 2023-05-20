.class final Lcom/tutk/IOTC/IOTCAPIs$1;
.super Ljava/lang/Object;
.source "IOTCAPIs.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUIDEx_2(Ljava/lang/String;ILcom/tutk/IOTC/St_IOTCConnectInput;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$Connect_input:Lcom/tutk/IOTC/St_IOTCConnectInput;

.field final synthetic val$SID:I

.field final synthetic val$UID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/tutk/IOTC/St_IOTCConnectInput;)V
    .registers 4

    .line 369
    iput-object p1, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$UID:Ljava/lang/String;

    iput p2, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$SID:I

    iput-object p3, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$Connect_input:Lcom/tutk/IOTC/St_IOTCConnectInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 4

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Connecting, SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$SID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2P IOTCAPIS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$UID:Ljava/lang/String;

    iget v1, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$SID:I

    iget-object v2, p0, Lcom/tutk/IOTC/IOTCAPIs$1;->val$Connect_input:Lcom/tutk/IOTC/St_IOTCConnectInput;

    invoke-static {v0, v1, v2}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUIDEx(Ljava/lang/String;ILcom/tutk/IOTC/St_IOTCConnectInput;)I

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

    .line 369
    invoke-virtual {p0}, Lcom/tutk/IOTC/IOTCAPIs$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

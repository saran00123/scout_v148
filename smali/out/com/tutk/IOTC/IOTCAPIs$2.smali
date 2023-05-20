.class final Lcom/tutk/IOTC/IOTCAPIs$2;
.super Ljava/lang/Object;
.source "IOTCAPIs.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUID_Parallel_2(Ljava/lang/String;I)I
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
.field final synthetic val$SID:I

.field final synthetic val$UID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 401
    iput-object p1, p0, Lcom/tutk/IOTC/IOTCAPIs$2;->val$UID:Ljava/lang/String;

    iput p2, p0, Lcom/tutk/IOTC/IOTCAPIs$2;->val$SID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/tutk/IOTC/IOTCAPIs$2;->val$UID:Ljava/lang/String;

    iget v1, p0, Lcom/tutk/IOTC/IOTCAPIs$2;->val$SID:I

    invoke-static {v0, v1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUID_Parallel(Ljava/lang/String;I)I

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

    .line 401
    invoke-virtual {p0}, Lcom/tutk/IOTC/IOTCAPIs$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

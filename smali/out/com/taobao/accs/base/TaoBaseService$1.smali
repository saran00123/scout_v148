.class Lcom/taobao/accs/base/TaoBaseService$1;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "Taobao"


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/base/TaoBaseService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/base/TaoBaseService;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$1;->this$0:Lcom/taobao/accs/base/TaoBaseService;

    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 4

    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 6

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 6

    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 5

    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 4

    return-void
.end method

.class Lcom/heytap/mcssdk/e/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/mcssdk/e/b;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/BaseMode;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/heytap/msp/push/mode/DataMessage;

.field final synthetic d:Lcom/heytap/mcssdk/e/b;


# direct methods
.method constructor <init>(Lcom/heytap/mcssdk/e/b;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;Landroid/content/Context;Lcom/heytap/msp/push/mode/DataMessage;)V
    .registers 5

    iput-object p1, p0, Lcom/heytap/mcssdk/e/b$1;->d:Lcom/heytap/mcssdk/e/b;

    iput-object p2, p0, Lcom/heytap/mcssdk/e/b$1;->a:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;

    iput-object p3, p0, Lcom/heytap/mcssdk/e/b$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/heytap/mcssdk/e/b$1;->c:Lcom/heytap/msp/push/mode/DataMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/heytap/mcssdk/e/b$1;->a:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;

    iget-object v1, p0, Lcom/heytap/mcssdk/e/b$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/mcssdk/e/b$1;->c:Lcom/heytap/msp/push/mode/DataMessage;

    invoke-interface {v0, v1, v2}, Lcom/heytap/msp/push/callback/IDataMessageCallBackService;->processMessage(Landroid/content/Context;Lcom/heytap/msp/push/mode/DataMessage;)V

    return-void
.end method

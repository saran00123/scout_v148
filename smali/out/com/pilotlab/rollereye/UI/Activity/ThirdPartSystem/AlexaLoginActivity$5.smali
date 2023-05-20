.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;
.super Ljava/lang/Object;
.source "AlexaLoginActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->getTestAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    .line 313
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

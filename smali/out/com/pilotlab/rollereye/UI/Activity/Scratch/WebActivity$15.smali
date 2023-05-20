.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

.field final synthetic val$datalist:Ljava/util/List;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 4

    .line 861
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$datalist:Ljava/util/List;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .line 863
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 864
    :goto_7
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$datalist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 865
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$datalist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :try_start_34
    const-string v2, "data"

    .line 867
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->val$datalist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "key"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 869
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 873
    :cond_4f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const/16 v1, 0x104

    const-string v2, "selectInList"

    invoke-virtual {v0, v2, v1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 874
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    .line 875
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

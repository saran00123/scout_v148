.class Lio/noties/markwon/html/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/html/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/noties/markwon/html/jsoup/nodes/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;


# direct methods
.method constructor <init>(Lio/noties/markwon/html/jsoup/nodes/Attributes;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 245
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-static {v1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->access$000(Lio/noties/markwon/html/jsoup/nodes/Attributes;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Lio/noties/markwon/html/jsoup/nodes/Attribute;
    .registers 5

    .line 250
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v0, v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    aget-object v0, v0, v1

    .line 251
    new-instance v1, Lio/noties/markwon/html/jsoup/nodes/Attribute;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget-object v2, v2, Lio/noties/markwon/html/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v3, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    aget-object v2, v2, v3

    if-nez v0, :cond_16

    const-string v0, ""

    :cond_16
    iget-object v3, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-direct {v1, v2, v0, v3}, Lio/noties/markwon/html/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/noties/markwon/html/jsoup/nodes/Attributes;)V

    .line 252
    iget v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 240
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->next()Lio/noties/markwon/html/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 258
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->this$0:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    iget v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/noties/markwon/html/jsoup/nodes/Attributes$1;->i:I

    invoke-static {v0, v1}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->access$100(Lio/noties/markwon/html/jsoup/nodes/Attributes;I)V

    return-void
.end method

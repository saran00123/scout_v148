.class Lcom/alibaba/sdk/android/tbrest/rest/c$a;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/tbrest/rest/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/tbrest/rest/c;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/tbrest/rest/c;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/c$a;->b:Lcom/alibaba/sdk/android/tbrest/rest/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/tbrest/rest/c;Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/tbrest/rest/c$a;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 63
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/rest/c$a;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 68
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 69
    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

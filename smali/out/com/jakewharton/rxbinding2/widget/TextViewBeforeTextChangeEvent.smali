.class public abstract Lcom/jakewharton/rxbinding2/widget/TextViewBeforeTextChangeEvent;
.super Ljava/lang/Object;
.source "TextViewBeforeTextChangeEvent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/TextView;Ljava/lang/CharSequence;III)Lcom/jakewharton/rxbinding2/widget/TextViewBeforeTextChangeEvent;
    .registers 12
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    new-instance v6, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewBeforeTextChangeEvent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewBeforeTextChangeEvent;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    return-object v6
.end method


# virtual methods
.method public abstract after()I
.end method

.method public abstract count()I
.end method

.method public abstract start()I
.end method

.method public abstract text()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract view()Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

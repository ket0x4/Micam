.class public Lcom/android/camera/ui/UrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "UrlSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;
    }
.end annotation


# instance fields
.field private mOnClickListener:Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/ui/UrlSpan;->mOnClickListener:Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/camera/ui/UrlSpan;->mOnClickListener:Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    .line 22
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const p0, -0xffff01

    .line 23
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

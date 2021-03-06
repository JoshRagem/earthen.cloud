### Helping People on the Kubernetes Slack Group

_July 30, 2017_

I've been lurking in the k8s slack group for a few months now watching people come and go with questions and answers. I now feel ready, as a non-expert willing to reply to questions with unhelpful text to provide a small orientation to people who are just joining the slack group.

### I would like now to present:

# K8s FAQ

Here are simplified versions of the most common questions I have seen while lurking on slack

1. How to install on bare metal?
2. How to do HA master cluster?
3. What does _this_ mean??!?!?!?!?

Now here are some answers I have prepared:

1. There are a few ways to install on bare metal, but no **ONE TRUE WAY**; if you proceed, you will have problems no one else will understand. If you are lucky, one of the ready-made solutions will fit your needs. Try: [kubespray](https://github.com/kubernetes-incubator/kubespray) or [kubeadm](https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/). I got most of the way on a local cluster but I never got dns to work correctly.
2. No one seems to know. I haven't seen anyone answer this question except to say that kubeadm will do HA master when it grows up. Maybe it's just easy if you use one of the k8s cluster building tools for cloud providers.
3. It means you did something wrong. K8s is a slippery beast and you will have a hard time pinning a bug to it. Nearly all errors are a misconfiguration or an attempt to use a feature that does not exist. Also you might have to re-do your CNI system to make it work. Try that a few times.

---

I joined the k8s slack group because I was hoping to get some help with a difficult (to me) dns situation. It's been a few months now and I've been hanging out in the `#kubernetes-users` channel watching what people post. I enjoy lurking and watching because I get to see a remarkable variety of people with a remarkable variety of situations. Most of the traffic in `#kubernetes-users` is people asking for help--I believe the purpose of this channel is a "quick question" platform.

My observation is that a great many questions go un-responded due to bursts of questions coming in--probably caused by people arriving to work in their respective time zones. Since the people who are most qualified to respond to questions are probably at work and don't have time to read every single post, some get missed. This is what happened to my first question about dns.

I have occasionally popped up now and again to respond to some questions. My answers are usually something like "you have a typo in your yaml" or "dns broke for me too!". I'm certainly not the most expert at k8s, so I keep my mouth shut instead of replying "have you tried googling it?".

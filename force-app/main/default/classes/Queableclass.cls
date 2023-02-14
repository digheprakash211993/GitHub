public class Queableclass implements Queueable
{
    public void execute(QueueableContext context) {
        system.debug('Inside queable method');
        // Awesome processing logic here
        // Chain this job to next job by submitting the next job
        //System.enqueueJob(new SecondJob());
    }
}